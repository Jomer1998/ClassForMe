package com.tfg.classforme.configuration;

import java.util.HashSet;
import java.util.Set;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.ConversionService;
import org.springframework.core.convert.TypeDescriptor;
import org.springframework.core.convert.converter.ConditionalGenericConverter;
import org.springframework.core.convert.support.DefaultConversionService;
import org.springframework.stereotype.Component;

import com.tfg.classforme.model.BaseEntity;

import javax.persistence.EntityManager;

@Component
public final class GenericIdToEntityConverter implements ConditionalGenericConverter {
	
	private static final Logger log = LoggerFactory.getLogger(GenericIdToEntityConverter.class);

    private final ConversionService conversionService=new DefaultConversionService();
    
    @Autowired(required = false)
    private EntityManager entityManager;
    
    public Set<ConvertiblePair> getConvertibleTypes(){
    	Set<ConvertiblePair> res = new HashSet<ConvertiblePair>();
    	res.add(new ConvertiblePair(Number.class,BaseEntity.class));
    	res.add(new ConvertiblePair(CharSequence.class,BaseEntity.class));
    	return res;
    }
    
    public boolean matches(TypeDescriptor source, TypeDescriptor target) {
    	return BaseEntity.class.isAssignableFrom(target.getType()) && this.conversionService.canConvert(source, TypeDescriptor.valueOf(Integer.class));
    }
    
    public Object convert (Object source, TypeDescriptor sourceType, TypeDescriptor targetType) {
    	if (source == null || entityManager==null) {
            return null;
        }
    	
    	Integer id = (Integer) this.conversionService.convert(source, sourceType, TypeDescriptor.valueOf(Integer.class));
    	
    	Object entity = entityManager.find(targetType.getType(), id);
    	if(entity == null) {
    		log.info("Did not find an entity with id {} of type {}", id,  targetType.getType());
    		return null;
    	}
    	
    	return entity;
    }
	
}
