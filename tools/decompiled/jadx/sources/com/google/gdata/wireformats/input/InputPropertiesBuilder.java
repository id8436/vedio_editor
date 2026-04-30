package com.google.gdata.wireformats.input;

import com.google.gdata.wireformats.StreamPropertiesBuilder;

/* JADX INFO: loaded from: classes3.dex */
public class InputPropertiesBuilder extends StreamPropertiesBuilder<InputPropertiesBuilder> {
    private Class<?> expectType;

    public InputPropertiesBuilder() {
    }

    public InputPropertiesBuilder(InputProperties inputProperties) {
        super(inputProperties);
        this.expectType = inputProperties.getRootType();
    }

    public InputPropertiesBuilder setExpectType(Class<?> cls) {
        this.expectType = cls;
        return this;
    }

    public InputProperties build() {
        return new InputPropertiesImpl();
    }

    class InputPropertiesImpl extends StreamPropertiesBuilder.StreamPropertiesImpl implements InputProperties {
        private final Class<?> expectType;

        private InputPropertiesImpl(InputPropertiesBuilder inputPropertiesBuilder) {
            super(inputPropertiesBuilder);
            this.expectType = inputPropertiesBuilder.expectType;
        }

        @Override // com.google.gdata.wireformats.input.InputProperties
        public Class<?> getRootType() {
            return this.expectType;
        }
    }
}
