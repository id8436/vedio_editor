package com.adobe.premiereclip.editor;

import com.adobe.premiereclip.project.sequence.AudioClip;
import com.adobe.premiereclip.util.JsonReader;
import com.adobe.premiereclip.util.JsonWriter;

/* JADX INFO: loaded from: classes2.dex */
public class ImpactDataStorage {
    public void readImpactDataFromJsonFile(AudioClip audioClip, JsonReader.IDataReadHandler iDataReadHandler) {
        String assetPath = audioClip.getAssetReference().getAssetPath();
        if (assetPath != null) {
            JsonReader.readDataFromJSONFile(assetPath, "impact", iDataReadHandler);
        }
    }

    public void writeImpactDataToJsonFile(float[] fArr, AudioClip audioClip, JsonWriter.IDataWriteHandler iDataWriteHandler) {
        String assetPath = audioClip.getAssetReference().getAssetPath();
        if (assetPath != null) {
            JsonWriter.writeDataToJsonFile(fArr, assetPath, "impact", iDataWriteHandler);
        }
    }
}
