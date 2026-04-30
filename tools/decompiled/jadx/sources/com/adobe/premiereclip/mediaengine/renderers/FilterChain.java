package com.adobe.premiereclip.mediaengine.renderers;

import android.util.Log;
import android.util.Pair;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.surface.GPUMediaTexture;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class FilterChain {
    private List<Pair<GPUMediaFilter, GPUMediaTexture>> filterList = new ArrayList();

    public void addFilter(GPUMediaFilter gPUMediaFilter, GPUMediaTexture gPUMediaTexture) {
        Log.i("Renderclip", "Adding filter: " + gPUMediaFilter.getClass());
        synchronized (this) {
            this.filterList.add(Pair.create(gPUMediaFilter, gPUMediaTexture));
        }
    }

    public void changeBuffer(GPUMediaFilter gPUMediaFilter, GPUMediaTexture gPUMediaTexture) {
        Log.i("Renderclip", "try setting filter: " + gPUMediaFilter.getClass());
        synchronized (this) {
            int i = 0;
            while (true) {
                if (i >= this.filterList.size()) {
                    break;
                }
                if (this.filterList.get(i).first != gPUMediaFilter) {
                    i++;
                } else {
                    Log.i("Renderclip", "setting filter: " + gPUMediaFilter.getClass());
                    this.filterList.set(i, Pair.create(gPUMediaFilter, gPUMediaTexture));
                    break;
                }
            }
        }
    }

    public void onDraw() {
        synchronized (this) {
            for (Pair<GPUMediaFilter, GPUMediaTexture> pair : this.filterList) {
                ((GPUMediaFilter) pair.first).updateSurface();
                ((GPUMediaFilter) pair.first).onDraw((GPUMediaTexture) pair.second);
            }
        }
    }

    public void removeFilter(int i) {
        synchronized (this) {
            this.filterList.remove(i);
        }
    }

    public void removeFilter(GPUMediaFilter gPUMediaFilter) {
        synchronized (this) {
            int i = 0;
            while (true) {
                if (i >= this.filterList.size()) {
                    break;
                }
                if (this.filterList.get(i).first != gPUMediaFilter) {
                    i++;
                } else {
                    Log.i("Renderclip", "removing filter: " + gPUMediaFilter.getClass());
                    this.filterList.remove(i);
                    break;
                }
            }
        }
    }

    public void removeFilters() {
        synchronized (this) {
            this.filterList.clear();
        }
    }
}
