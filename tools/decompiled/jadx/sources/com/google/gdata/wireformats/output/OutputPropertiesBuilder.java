package com.google.gdata.wireformats.output;

import com.google.gdata.wireformats.StreamPropertiesBuilder;

/* JADX INFO: loaded from: classes3.dex */
public class OutputPropertiesBuilder extends StreamPropertiesBuilder<OutputPropertiesBuilder> {
    public OutputPropertiesBuilder() {
    }

    public OutputPropertiesBuilder(OutputProperties outputProperties) {
        super(outputProperties);
    }

    public OutputProperties build() {
        return new OutputPropertiesImpl();
    }

    class OutputPropertiesImpl extends StreamPropertiesBuilder.StreamPropertiesImpl implements OutputProperties {
        private OutputPropertiesImpl(OutputPropertiesBuilder outputPropertiesBuilder) {
            super(outputPropertiesBuilder);
        }
    }
}
