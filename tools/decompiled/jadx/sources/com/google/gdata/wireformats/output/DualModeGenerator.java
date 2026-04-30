package com.google.gdata.wireformats.output;

import com.google.gdata.model.Element;
import java.io.IOException;
import java.io.Writer;

/* JADX INFO: loaded from: classes3.dex */
public abstract class DualModeGenerator<T> extends WireFormatOutputGenerator<T> {
    private final CharacterGenerator<T> oldGen;

    protected DualModeGenerator(CharacterGenerator<T> characterGenerator) {
        this.oldGen = characterGenerator;
    }

    @Override // com.google.gdata.wireformats.output.WireFormatOutputGenerator, com.google.gdata.wireformats.output.CharacterGenerator
    public void generate(Writer writer, OutputProperties outputProperties, T t) throws IOException {
        if (isNewModel(t)) {
            super.generate(writer, outputProperties, t);
        } else {
            this.oldGen.generate(writer, outputProperties, t);
        }
    }

    private boolean isNewModel(T t) {
        return t instanceof Element;
    }
}
