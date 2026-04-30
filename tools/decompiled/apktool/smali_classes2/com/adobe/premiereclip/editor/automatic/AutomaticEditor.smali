.class public Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;
.super Lcom/adobe/premiereclip/editor/Editor;
.source "AutomaticEditor.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/adobe/premiereclip/editor/Timeline;Lcom/adobe/premiereclip/project/Project;Lcom/adobe/premiereclip/editor/SnapToBeatController;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/adobe/premiereclip/editor/Editor;-><init>(Landroid/content/Context;Lcom/adobe/premiereclip/editor/Timeline;Lcom/adobe/premiereclip/project/Project;Lcom/adobe/premiereclip/editor/SnapToBeatController;)V

    .line 45
    return-void
.end method

.method private initializeWithRandomTrack()V
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getAudioTrackGroup()Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;->getAudioTrack()Lcom/adobe/premiereclip/project/sequence/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/adobe/premiereclip/music/SoundTrackManager;->getClipSoundTracks(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 103
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/AudioClip;

    .line 104
    if-eqz v0, :cond_0

    .line 105
    invoke-static {}, Lcom/adobe/premiereclip/project/ProjectManager;->getInstance()Lcom/adobe/premiereclip/project/ProjectManager;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    iget-object v2, v2, Lcom/adobe/premiereclip/project/Project;->projectKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/project/ProjectManager;->getProjectWithKey(Ljava/lang/String;)Lcom/adobe/premiereclip/project/Project;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getAudioTrackGroup()Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;->getAudioTrack()Lcom/adobe/premiereclip/project/sequence/AudioTrack;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->replaceAudioClip(Lcom/adobe/premiereclip/project/sequence/AudioClip;)V

    .line 106
    invoke-static {}, Lcom/adobe/premiereclip/project/ProjectManager;->getInstance()Lcom/adobe/premiereclip/project/ProjectManager;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    iget-object v1, v1, Lcom/adobe/premiereclip/project/Project;->projectKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/project/ProjectManager;->getProjectWithKey(Ljava/lang/String;)Lcom/adobe/premiereclip/project/Project;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXWriter;->addAudioTrack(Lcom/adobe/premiereclip/project/sequence/Sequence;)V

    .line 109
    :cond_0
    return-void
.end method

.method private onGroupMoved(II)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 174
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;->timeline:Lcom/adobe/premiereclip/editor/Timeline;

    check-cast v0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;

    .line 175
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v1, p1, p2}, Lcom/adobe/premiereclip/project/Project;->moveGroupAsset(II)V

    .line 176
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    .line 177
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getFirstClipIndexInGroup(I)I

    move-result v1

    .line 178
    iget-object v2, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getLastClipIndexInGroup(I)I

    move-result v4

    .line 184
    add-int/lit8 v2, v1, -0x1

    if-ltz v2, :cond_1

    .line 185
    iget-object v2, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/premiereclip/project/sequence/Clip;

    move-object v2, v1

    .line 187
    :goto_0
    add-int/lit8 v1, v4, 0x1

    iget-object v5, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v5}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v5

    invoke-virtual {v5}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 188
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v1

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/premiereclip/project/sequence/Clip;

    move-object v3, v1

    .line 191
    :cond_0
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getGroups()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-static {v2, v1, v3}, Lcom/adobe/premiereclip/dcx/DCXWriter;->moveClips(Lcom/adobe/premiereclip/project/sequence/Clip;Ljava/util/ArrayList;Lcom/adobe/premiereclip/project/sequence/Clip;)V

    .line 193
    invoke-virtual {v0, p2}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;->saveCurrentClipIndex(I)V

    .line 194
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;->playerReInit(I)V

    .line 195
    invoke-virtual {p0, p2}, Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;->saveCurrentClipIndex(I)V

    .line 196
    return-void

    :cond_1
    move-object v2, v3

    goto :goto_0
.end method

.method private onGroupRemoved(I)V
    .locals 4

    .prologue
    .line 148
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;->timeline:Lcom/adobe/premiereclip/editor/Timeline;

    check-cast v0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;

    .line 150
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getGroups()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 152
    iget-object v2, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v2, p1}, Lcom/adobe/premiereclip/project/Project;->removeGroupAsset(I)V

    .line 153
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 154
    invoke-static {v1}, Lcom/adobe/premiereclip/dcx/DCXWriter;->removeClip(Lcom/adobe/premiereclip/project/sequence/Clip;)V

    goto :goto_0

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getGroups()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 158
    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;->getCurrentClipIndex()I

    move-result v1

    .line 159
    if-lt v1, v2, :cond_1

    .line 160
    add-int/lit8 v1, v2, -0x1

    .line 162
    :cond_1
    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;->saveCurrentClipIndex(I)V

    .line 163
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;->setActiveClipIndex(IZ)V

    .line 165
    if-eqz v2, :cond_2

    .line 166
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;->playerReInit(I)V

    .line 170
    :goto_1
    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;->saveCurrentClipIndex(I)V

    .line 171
    return-void

    .line 168
    :cond_2
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;->releaseInternal()V

    goto :goto_1
.end method


# virtual methods
.method public addAssets(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/media/ClipAsset;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    iget v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;->currentClipIndex:I

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getLastClipIndexInGroup(I)I

    move-result v0

    .line 89
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, p1, v0}, Lcom/adobe/premiereclip/project/Project;->addAssetsAtIndex(Ljava/util/ArrayList;I)V

    .line 90
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;->resetGroups()V

    .line 91
    return-void
.end method

.method public foundUnavailableClip(I)V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public init()Z
    .locals 3

    .prologue
    .line 49
    const-string/jumbo v0, "AutoEditor"

    const-string/jumbo v1, "Init"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-super {p0}, Lcom/adobe/premiereclip/editor/Editor;->init()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;->clipSaveState:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ClipSaveState;

    iget v1, v1, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ClipSaveState;->clipIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 54
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;->clipSaveState:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ClipSaveState;

    iget v1, v1, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ClipSaveState;->clipIndex:I

    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;->saveCurrentClipIndex(I)V

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;->resetGroups()V

    .line 58
    :cond_1
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;->initializeWithRandomTrack()V

    .line 59
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public onClipMoved(II)V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;->onGroupMoved(II)V

    .line 126
    return-void
.end method

.method public onClipRemoved(I)V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;->onGroupRemoved(I)V

    .line 121
    return-void
.end method

.method public onClipSelected(I)V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;->timeline:Lcom/adobe/premiereclip/editor/Timeline;

    check-cast v0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;->saveCurrentClipIndex(I)V

    .line 114
    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;->saveCurrentClipIndex(I)V

    .line 116
    return-void
.end method

.method public onProjectPosterUpdated()V
    .locals 0

    .prologue
    .line 131
    return-void
.end method

.method public playSequence()V
    .locals 2

    .prologue
    .line 64
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;->seekToSequenceTime(J)V

    .line 65
    invoke-super {p0}, Lcom/adobe/premiereclip/editor/Editor;->playSequence()V

    .line 66
    return-void
.end method

.method public playerReInit(IJ)V
    .locals 2

    .prologue
    .line 142
    iget v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;->currentClipIndex:I

    .line 143
    invoke-super {p0, p1, p2, p3}, Lcom/adobe/premiereclip/editor/Editor;->playerReInit(IJ)V

    .line 144
    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;->saveCurrentClipIndex(I)V

    .line 145
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;->clipSaveState:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ClipSaveState;

    iget v0, v0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ClipSaveState;->clipIndex:I

    .line 136
    invoke-super {p0}, Lcom/adobe/premiereclip/editor/Editor;->release()V

    .line 137
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;->clipSaveState:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ClipSaveState;

    iput v0, v1, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ClipSaveState;->clipIndex:I

    .line 138
    return-void
.end method

.method public resetGroups()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getVideoTrackGroup()Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;->getMainVideoTrack()Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->invalidateGroups()V

    .line 95
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getVideoTrackGroup()Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;->getMainVideoTrack()Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getGroups()Ljava/util/ArrayList;

    .line 96
    return-void
.end method

.method public setCurrentClip(I)V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method public setTrimBar(FF)V
    .locals 0

    .prologue
    .line 76
    return-void
.end method
