package com.adobe.premiereclip.editor.automatic;

import android.content.Context;
import android.util.Log;
import com.adobe.premiereclip.dcx.DCXWriter;
import com.adobe.premiereclip.editor.Editor;
import com.adobe.premiereclip.editor.SnapToBeatController;
import com.adobe.premiereclip.editor.Timeline;
import com.adobe.premiereclip.media.ClipAsset;
import com.adobe.premiereclip.music.SoundTrackManager;
import com.adobe.premiereclip.project.Project;
import com.adobe.premiereclip.project.ProjectManager;
import com.adobe.premiereclip.project.sequence.AudioClip;
import com.adobe.premiereclip.project.sequence.Clip;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Random;

/* JADX INFO: loaded from: classes2.dex */
public class AutomaticEditor extends Editor {
    public AutomaticEditor(Context context, Timeline timeline, Project project, SnapToBeatController snapToBeatController) {
        super(context, timeline, project, snapToBeatController);
    }

    @Override // com.adobe.premiereclip.editor.Editor
    public boolean init() {
        Log.i("AutoEditor", "Init");
        Boolean boolValueOf = Boolean.valueOf(super.init());
        if (boolValueOf.booleanValue()) {
            if (this.clipSaveState.clipIndex != -1) {
                saveCurrentClipIndex(this.clipSaveState.clipIndex);
            }
            resetGroups();
        }
        initializeWithRandomTrack();
        return boolValueOf.booleanValue();
    }

    @Override // com.adobe.premiereclip.editor.Editor
    public void playSequence() {
        seekToSequenceTime(0L);
        super.playSequence();
    }

    @Override // com.adobe.premiereclip.editor.Editor, com.adobe.premiereclip.mediaengine.SequencePlayer.Listener
    public void foundUnavailableClip(int i) {
    }

    @Override // com.adobe.premiereclip.editor.Editor, com.adobe.premiereclip.mediaengine.SequencePlayer.Listener
    public void setTrimBar(float f2, float f3) {
    }

    @Override // com.adobe.premiereclip.editor.Editor, com.adobe.premiereclip.mediaengine.SequencePlayer.Listener
    public void setCurrentClip(int i) {
    }

    @Override // com.adobe.premiereclip.editor.Editor
    public void addAssets(ArrayList<ClipAsset> arrayList) {
        this.currentProject.addAssetsAtIndex(arrayList, this.currentProject.getSequence().getLastClipIndexInGroup(this.currentClipIndex) + 1);
        resetGroups();
    }

    public void resetGroups() {
        this.currentProject.getSequence().getVideoTrackGroup().getMainVideoTrack().invalidateGroups();
        this.currentProject.getSequence().getVideoTrackGroup().getMainVideoTrack().getGroups();
    }

    private void initializeWithRandomTrack() {
        if (this.currentProject.getSequence().getAudioTrackGroup().getAudioTrack().getClips().isEmpty()) {
            ArrayList<AudioClip> clipSoundTracks = SoundTrackManager.getClipSoundTracks(this.context);
            AudioClip audioClip = clipSoundTracks.get(new Random().nextInt(clipSoundTracks.size()));
            if (audioClip != null) {
                ProjectManager.getInstance().getProjectWithKey(this.currentProject.projectKey).getSequence().getAudioTrackGroup().getAudioTrack().replaceAudioClip(audioClip);
                DCXWriter.addAudioTrack(ProjectManager.getInstance().getProjectWithKey(this.currentProject.projectKey).getSequence());
            }
        }
    }

    @Override // com.adobe.premiereclip.editor.Editor, com.adobe.premiereclip.editor.Timeline.TimelineListener
    public void onClipSelected(int i) {
        ((AutomaticTimeline) this.timeline).saveCurrentClipIndex(i);
        saveCurrentClipIndex(i);
    }

    @Override // com.adobe.premiereclip.editor.Editor, com.adobe.premiereclip.editor.Timeline.TimelineListener
    public void onClipRemoved(int i) {
        onGroupRemoved(i);
    }

    @Override // com.adobe.premiereclip.editor.Editor, com.adobe.premiereclip.editor.Timeline.TimelineListener
    public void onClipMoved(int i, int i2) {
        onGroupMoved(i, i2);
    }

    @Override // com.adobe.premiereclip.editor.Editor, com.adobe.premiereclip.editor.Timeline.TimelineListener
    public void onProjectPosterUpdated() {
    }

    @Override // com.adobe.premiereclip.editor.Editor
    public void release() {
        int i = this.clipSaveState.clipIndex;
        super.release();
        this.clipSaveState.clipIndex = i;
    }

    @Override // com.adobe.premiereclip.editor.Editor
    public void playerReInit(int i, long j) {
        int i2 = this.currentClipIndex;
        super.playerReInit(i, j);
        saveCurrentClipIndex(i2);
    }

    private void onGroupRemoved(int i) {
        AutomaticTimeline automaticTimeline = (AutomaticTimeline) this.timeline;
        ArrayList<Clip> arrayList = this.currentProject.getSequence().getGroups().get(i);
        this.currentProject.removeGroupAsset(i);
        Iterator<Clip> it = arrayList.iterator();
        while (it.hasNext()) {
            DCXWriter.removeClip(it.next());
        }
        int size = this.currentProject.getSequence().getGroups().size();
        int currentClipIndex = automaticTimeline.getCurrentClipIndex();
        if (currentClipIndex >= size) {
            currentClipIndex = size - 1;
        }
        automaticTimeline.saveCurrentClipIndex(currentClipIndex);
        automaticTimeline.setActiveClipIndex(currentClipIndex, true);
        if (size != 0) {
            playerReInit(0);
        } else {
            releaseInternal();
        }
        saveCurrentClipIndex(currentClipIndex);
    }

    private void onGroupMoved(int i, int i2) {
        AutomaticTimeline automaticTimeline = (AutomaticTimeline) this.timeline;
        this.currentProject.moveGroupAsset(i, i2);
        this.currentProject.getSequence().getClips();
        int firstClipIndexInGroup = this.currentProject.getSequence().getFirstClipIndexInGroup(i2);
        int lastClipIndexInGroup = this.currentProject.getSequence().getLastClipIndexInGroup(i2);
        DCXWriter.moveClips(firstClipIndexInGroup + (-1) >= 0 ? this.currentProject.getSequence().getClips().get(firstClipIndexInGroup - 1) : null, this.currentProject.getSequence().getGroups().get(i2), lastClipIndexInGroup + 1 < this.currentProject.getSequence().getClips().size() ? this.currentProject.getSequence().getClips().get(lastClipIndexInGroup + 1) : null);
        automaticTimeline.saveCurrentClipIndex(i2);
        playerReInit(0);
        saveCurrentClipIndex(i2);
    }
}
