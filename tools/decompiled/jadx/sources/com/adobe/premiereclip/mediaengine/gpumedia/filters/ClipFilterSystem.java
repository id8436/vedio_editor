package com.adobe.premiereclip.mediaengine.gpumedia.filters;

import com.adobe.premiereclip.looks.BaseLook;
import com.adobe.premiereclip.project.sequence.ClipOptionsEffects;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class ClipFilterSystem extends GPUMediaBlockFilter {
    private static final int NUMBER_OF_EXPOSURE_FILTERS = 2;
    private static final int NUMBER_OF_LOOKUP_FILTERS = 2;
    private float currentBlendFactor;
    private ArrayList<GPUMediaFilter> exposureFilters;
    private ArrayList<GPUMediaFilter> lookFilters;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ClipFilterSystem() {
        super(6);
        this.currentBlendFactor = 0.0f;
        this.exposureFilters = new ArrayList<>();
        this.lookFilters = new ArrayList<>();
        for (int i = 0; i < 2; i++) {
            this.exposureFilters.add(new ClipExposureFilter());
        }
        for (int i2 = 0; i2 < 2; i2++) {
            this.lookFilters.add(new ClipLookUpFilter());
        }
        addFilters(this.lookFilters);
        addFilters(this.exposureFilters);
        addFilter(new GPUMediaNonAlphaBlendFilter(0.0f));
    }

    public void setLook(BaseLook baseLook) {
        for (int i = 0; i < this.lookFilters.size(); i++) {
            setNull(i, baseLook.getLookId().equals("0"));
        }
    }

    public void setLookToFilter(int i, String str) {
        setNull(i, str.equals("0"));
    }

    public void setClipOptionsToFilter(int i, ClipOptionsEffects clipOptionsEffects) {
        if (i < this.exposureFilters.size()) {
            ((ClipExposureFilter) this.exposureFilters.get(i)).setExposure(clipOptionsEffects.getExposure());
            ((ClipExposureFilter) this.exposureFilters.get(i)).setHighlights(clipOptionsEffects.getHighlights());
            ((ClipExposureFilter) this.exposureFilters.get(i)).setShadows(clipOptionsEffects.getShadows());
        }
    }

    public boolean setBlendFactor(float f2) {
        if (f2 == this.currentBlendFactor) {
            return false;
        }
        this.currentBlendFactor = f2;
        ((GPUMediaNonAlphaBlendFilter) this.mFilters.get(4)).setMix(f2);
        return true;
    }

    private void setNull(int i, boolean z) {
        ((ClipLookUpFilter) this.lookFilters.get(i)).setNullEffect(z);
    }

    private static int filterInputNodesCount(GPUMediaFilter gPUMediaFilter) {
        if (gPUMediaFilter instanceof GPUMediaTwoInputFilter) {
            return 2;
        }
        if (gPUMediaFilter instanceof GPUMediaBlockFilter) {
            return ((GPUMediaBlockFilter) gPUMediaFilter).getNumInputNodes();
        }
        return 1;
    }

    @Override // com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaBlockFilter
    protected void buildNodesInternal() {
        int i = 0;
        while (i < 2) {
            setInputNode(i, 0, this.mTextures.get(i));
            setInputNode(i, 1, this.mTextures.get(i + 2));
            i++;
        }
        while (i < 4) {
            setInputNode(i, 0, this.mFrameBuffers.get(i - 2));
            setInputNode(i, 1, this.mTextures.get(i + 2));
            i++;
        }
        for (int i2 = 0; i2 < filterInputNodesCount(this.mFilters.get(4)); i2++) {
            setInputNode(i, i2, this.mFrameBuffers.get(i2 + 2));
        }
    }
}
