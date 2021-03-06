// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package menu.web;

import menu.domain.Dish;
import menu.domain.Ingredient;
import menu.domain.Realisation;
import menu.domain.ReceipeIngredient;
import menu.web.ApplicationConversionServiceFactoryBean;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    declare @type: ApplicationConversionServiceFactoryBean: @Configurable;
    
    public Converter<Dish, String> ApplicationConversionServiceFactoryBean.getDishToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<menu.domain.Dish, java.lang.String>() {
            public String convert(Dish dish) {
                return new StringBuilder().append(dish.getPreparationTime()).append(' ').append(dish.getCookingTime()).append(' ').append(dish.getReference()).append(' ').append(dish.getTitle()).toString();
            }
        };
    }
    
    public Converter<Long, Dish> ApplicationConversionServiceFactoryBean.getIdToDishConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, menu.domain.Dish>() {
            public menu.domain.Dish convert(java.lang.Long id) {
                return Dish.findDish(id);
            }
        };
    }
    
    public Converter<String, Dish> ApplicationConversionServiceFactoryBean.getStringToDishConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, menu.domain.Dish>() {
            public menu.domain.Dish convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Dish.class);
            }
        };
    }
    
    public Converter<Ingredient, String> ApplicationConversionServiceFactoryBean.getIngredientToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<menu.domain.Ingredient, java.lang.String>() {
            public String convert(Ingredient ingredient) {
                return new StringBuilder().append(ingredient.getMylabel()).toString();
            }
        };
    }
    
    public Converter<Long, Ingredient> ApplicationConversionServiceFactoryBean.getIdToIngredientConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, menu.domain.Ingredient>() {
            public menu.domain.Ingredient convert(java.lang.Long id) {
                return Ingredient.findIngredient(id);
            }
        };
    }
    
    public Converter<String, Ingredient> ApplicationConversionServiceFactoryBean.getStringToIngredientConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, menu.domain.Ingredient>() {
            public menu.domain.Ingredient convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Ingredient.class);
            }
        };
    }
    
    public Converter<Realisation, String> ApplicationConversionServiceFactoryBean.getRealisationToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<menu.domain.Realisation, java.lang.String>() {
            public String convert(Realisation realisation) {
                return new StringBuilder().append(realisation.getMydate()).append(' ').append(realisation.getMycomment()).toString();
            }
        };
    }
    
    public Converter<Long, Realisation> ApplicationConversionServiceFactoryBean.getIdToRealisationConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, menu.domain.Realisation>() {
            public menu.domain.Realisation convert(java.lang.Long id) {
                return Realisation.findRealisation(id);
            }
        };
    }
    
    public Converter<String, Realisation> ApplicationConversionServiceFactoryBean.getStringToRealisationConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, menu.domain.Realisation>() {
            public menu.domain.Realisation convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Realisation.class);
            }
        };
    }
    
    public Converter<ReceipeIngredient, String> ApplicationConversionServiceFactoryBean.getReceipeIngredientToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<menu.domain.ReceipeIngredient, java.lang.String>() {
            public String convert(ReceipeIngredient receipeIngredient) {
                return new StringBuilder().append(receipeIngredient.getQuantity()).toString();
            }
        };
    }
    
    public Converter<Long, ReceipeIngredient> ApplicationConversionServiceFactoryBean.getIdToReceipeIngredientConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, menu.domain.ReceipeIngredient>() {
            public menu.domain.ReceipeIngredient convert(java.lang.Long id) {
                return ReceipeIngredient.findReceipeIngredient(id);
            }
        };
    }
    
    public Converter<String, ReceipeIngredient> ApplicationConversionServiceFactoryBean.getStringToReceipeIngredientConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, menu.domain.ReceipeIngredient>() {
            public menu.domain.ReceipeIngredient convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), ReceipeIngredient.class);
            }
        };
    }
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(getDishToStringConverter());
        registry.addConverter(getIdToDishConverter());
        registry.addConverter(getStringToDishConverter());
        registry.addConverter(getIngredientToStringConverter());
        registry.addConverter(getIdToIngredientConverter());
        registry.addConverter(getStringToIngredientConverter());
        registry.addConverter(getRealisationToStringConverter());
        registry.addConverter(getIdToRealisationConverter());
        registry.addConverter(getStringToRealisationConverter());
        registry.addConverter(getReceipeIngredientToStringConverter());
        registry.addConverter(getIdToReceipeIngredientConverter());
        registry.addConverter(getStringToReceipeIngredientConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
}
