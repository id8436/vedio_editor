package com.adobe.premiereclip.mediaengine.resources;

import android.content.Context;
import com.adobe.premiereclip.mediaengine.gpumedia.GPUMediaSurfaceView;
import com.adobe.premiereclip.mediaengine.gpumedia.Rotation;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class ClipRendererResourcePool {
    private static final int NUMBER_OF_RESOURCES = 4;
    private static final int NUMBER_OF_RESOURCES_PER_TRACK = 2;
    private static final int NUMBER_OF_TRACKS = 2;
    private ArrayList<ResourcesInfo> clipRendererResourcesInfoList = new ArrayList<>();

    class ResourcesInfo {
        private ClipRendererResources clipRendererResources;
        private int mappedClip;
        private int trackIndex;

        private ResourcesInfo(ClipRendererResources clipRendererResources, int i, int i2) {
            this.clipRendererResources = clipRendererResources;
            this.mappedClip = i;
            this.trackIndex = i2;
        }
    }

    public ClipRendererResourcePool(Context context, GPUMediaSurfaceView gPUMediaSurfaceView) {
        int i = -1;
        for (int i2 = 0; i2 < 4; i2++) {
            this.clipRendererResourcesInfoList.add(new ResourcesInfo(new ClipRendererResources(context, gPUMediaSurfaceView), i, i));
        }
    }

    public void initResources(int i, int i2) {
        Iterator<ResourcesInfo> it = this.clipRendererResourcesInfoList.iterator();
        while (it.hasNext()) {
            it.next().clipRendererResources.init(i, i2, Rotation.NORMAL);
        }
    }

    public void onOutputSizeChanged(int i, int i2) {
        Iterator<ResourcesInfo> it = this.clipRendererResourcesInfoList.iterator();
        while (it.hasNext()) {
            it.next().clipRendererResources.setMaxSize(i, i2);
        }
    }

    public ClipRendererResources getResourcesForClipIndex(int i, int i2) {
        for (ResourcesInfo resourcesInfo : this.clipRendererResourcesInfoList) {
            if (resourcesInfo.mappedClip == i2 && resourcesInfo.trackIndex == i) {
                return resourcesInfo.clipRendererResources;
            }
        }
        ResourcesInfo resourcesInfo2 = this.clipRendererResourcesInfoList.get((i2 % 2) + (i * 2));
        resourcesInfo2.mappedClip = i2;
        resourcesInfo2.trackIndex = i;
        return resourcesInfo2.clipRendererResources;
    }

    public ClipRendererResources getResources(int i) {
        return this.clipRendererResourcesInfoList.get(i).clipRendererResources;
    }

    public void release() {
        for (ResourcesInfo resourcesInfo : this.clipRendererResourcesInfoList) {
            resourcesInfo.clipRendererResources.release();
            resourcesInfo.mappedClip = -1;
            resourcesInfo.trackIndex = -1;
        }
    }
}
