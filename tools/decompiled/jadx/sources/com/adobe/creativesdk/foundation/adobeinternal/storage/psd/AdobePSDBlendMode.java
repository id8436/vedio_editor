package com.adobe.creativesdk.foundation.adobeinternal.storage.psd;

/* JADX INFO: loaded from: classes.dex */
public enum AdobePSDBlendMode {
    AdobePSDBlendModeNormal(0),
    AdobePSDBlendModeDissolve(1),
    AdobePSDBlendModeDarken(2),
    AdobePSDBlendModeMultiply(3),
    AdobePSDBlendModeColorBurn(4),
    AdobePSDBlendModeLinearBurn(5),
    AdobePSDBlendModeDarkerColor(6),
    AdobePSDBlendModeLighten(7),
    AdobePSDBlendModeScreen(8),
    AdobePSDBlendModeColorDodge(9),
    AdobePSDBlendModeLinearDodge(10),
    AdobePSDBlendModeLighterColor(11),
    AdobePSDBlendModeOverlay(12),
    AdobePSDBlendModeSoftLight(13),
    AdobePSDBlendModeHardLight(14),
    AdobePSDBlendModeVividLight(15),
    AdobePSDBlendModeLinearLight(16),
    AdobePSDBlendModePinLight(17),
    AdobePSDBlendModeHardMix(18),
    AdobePSDBlendModeDifference(19),
    AdobePSDBlendModeExclusion(20),
    AdobePSDBlendModeSubtract(21),
    AdobePSDBlendModeDivide(22),
    AdobePSDBlendModeHue(23),
    AdobePSDBlendModeSaturation(24),
    AdobePSDBlendModeColor(25),
    AdobePSDBlendModeLuminosity(26),
    AdobePSDBlendModePassThrough(27),
    AdobePSDBlendModeUnknown(28);

    private final int value;

    public Integer value() {
        return Integer.valueOf(this.value);
    }

    public static AdobePSDBlendMode getEnumForIndex(int i) {
        for (AdobePSDBlendMode adobePSDBlendMode : values()) {
            if (adobePSDBlendMode.value().intValue() == i) {
                return adobePSDBlendMode;
            }
        }
        return null;
    }

    AdobePSDBlendMode(int i) {
        this.value = i;
    }
}
