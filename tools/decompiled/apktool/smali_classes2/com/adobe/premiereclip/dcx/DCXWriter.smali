.class public Lcom/adobe/premiereclip/dcx/DCXWriter;
.super Ljava/lang/Object;
.source "DCXWriter.java"


# static fields
.field private static DEFAULT_ASSET_DURATION:J = 0x0L

.field private static final TAG:Ljava/lang/String; = "DCXWriter"

.field private static currentComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

.field private static projectId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 74
    const-wide/32 v0, 0x249f0

    sput-wide v0, Lcom/adobe/premiereclip/dcx/DCXWriter;->DEFAULT_ASSET_DURATION:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAudioTrack(Lcom/adobe/premiereclip/project/sequence/Sequence;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1094
    sget-object v0, Lcom/adobe/premiereclip/dcx/DCXWriter;->currentComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v2

    .line 1095
    invoke-static {v2}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getAudioClipNodes(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1096
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1097
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXWriter;->deleteAudioTrack()V

    .line 1099
    :cond_0
    invoke-static {v2, p0}, Lcom/adobe/premiereclip/dcx/DCXWriter;->getAudioMediaReference(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;Lcom/adobe/premiereclip/project/sequence/Sequence;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v3

    .line 1100
    if-nez v3, :cond_1

    .line 1154
    :goto_0
    return-void

    .line 1103
    :cond_1
    const-string/jumbo v0, "Audio Clip"

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->createNodeWithName(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v4

    .line 1104
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getAudioTrackGroup()Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;->getAudioTrack()Lcom/adobe/premiereclip/project/sequence/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipId()Ljava/lang/String;

    move-result-object v0

    .line 1105
    if-nez v0, :cond_2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1106
    :cond_2
    invoke-virtual {v4, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->setNodeId(Ljava/lang/String;)V

    .line 1107
    const-string/jumbo v0, "AudioClip"

    invoke-virtual {v4, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->setType(Ljava/lang/String;)V

    .line 1108
    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->getNodeId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->setPath(Ljava/lang/String;)V

    .line 1110
    invoke-static {p0}, Lcom/adobe/premiereclip/dcx/DCXWriter;->getSequenceAudioComponents(Lcom/adobe/premiereclip/project/sequence/Sequence;)Lorg/json/JSONArray;

    move-result-object v5

    .line 1111
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 1113
    const/4 v1, 0x0

    .line 1114
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getAudioTrackGroup()Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;->getAudioTrack()Lcom/adobe/premiereclip/project/sequence/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    .line 1115
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_7

    .line 1116
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/AudioClip;

    .line 1117
    if-eqz v0, :cond_7

    .line 1118
    iget-object v0, v0, Lcom/adobe/premiereclip/project/sequence/AudioClip;->songName:Ljava/lang/String;

    .line 1123
    :goto_1
    :try_start_0
    invoke-static {v6}, Lcom/adobe/premiereclip/dcx/DCXUtils;->updateModificationTimeInDictionary(Lorg/json/JSONObject;)J

    .line 1124
    if-eqz v5, :cond_3

    .line 1125
    const-string/jumbo v1, "audioComponents"

    invoke-virtual {v6, v1, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1127
    :cond_3
    if-eqz v0, :cond_4

    .line 1128
    const-string/jumbo v1, "title"

    invoke-virtual {v6, v1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1130
    :cond_4
    const-string/jumbo v0, "mediaRef"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "/media/"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getNodeId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1136
    invoke-static {v4, v6}, Lcom/adobe/premiereclip/dcx/DCXUtils;->setAppPropertiesForNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;Lorg/json/JSONObject;)V

    .line 1138
    invoke-static {v2}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getSequenceNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getChildrenOf(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Ljava/util/List;

    move-result-object v0

    .line 1140
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    .line 1141
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "Audio Track"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1142
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getMutableCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v0

    .line 1144
    :try_start_1
    invoke-virtual {v2, v4, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->addChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;
    :try_end_1
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1152
    :cond_6
    :goto_2
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXWriter;->commitToDCX()V

    goto/16 :goto_0

    .line 1132
    :catch_0
    move-exception v0

    .line 1133
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 1146
    :catch_1
    move-exception v0

    .line 1147
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;->printStackTrace()V

    goto :goto_2

    :cond_7
    move-object v0, v1

    goto :goto_1
.end method

.method public static addClips(Lcom/adobe/premiereclip/project/sequence/Clip;Ljava/util/ArrayList;Lcom/adobe/premiereclip/project/sequence/Clip;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/premiereclip/project/sequence/Clip;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/project/sequence/Clip;",
            ">;",
            "Lcom/adobe/premiereclip/project/sequence/Clip;",
            ")V"
        }
    .end annotation

    .prologue
    .line 759
    sget-object v0, Lcom/adobe/premiereclip/dcx/DCXWriter;->currentComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/adobe/premiereclip/dcx/DCXUtils;->JSONObjectExists(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;Lcom/adobe/premiereclip/project/sequence/Clip;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/adobe/premiereclip/dcx/DCXWriter;->currentComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    .line 760
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/adobe/premiereclip/dcx/DCXUtils;->JSONObjectExists(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;Lcom/adobe/premiereclip/project/sequence/Clip;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 762
    sget-object v0, Lcom/adobe/premiereclip/dcx/DCXWriter;->currentComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-static {v0, p0, p2}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getSortableValueOfCurrentClip(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;Lcom/adobe/premiereclip/project/sequence/Clip;Lcom/adobe/premiereclip/project/sequence/Clip;)Ljava/lang/String;

    move-result-object v0

    .line 763
    sget-object v1, Lcom/adobe/premiereclip/dcx/DCXWriter;->currentComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    if-eqz v1, :cond_1

    .line 764
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 765
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/dcx/DCXWriter;->createVideoClipDCXNode(Lcom/adobe/premiereclip/project/sequence/Clip;Ljava/lang/String;)V

    .line 766
    sget-object v1, Lcom/adobe/premiereclip/dcx/DCXWriter;->currentComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v1

    invoke-static {v1, v0, p2}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getSortableValueOfCurrentClip(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;Lcom/adobe/premiereclip/project/sequence/Clip;Lcom/adobe/premiereclip/project/sequence/Clip;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 767
    goto :goto_0

    .line 768
    :cond_0
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXWriter;->commitToDCX()V

    .line 771
    :cond_1
    return-void
.end method

.method public static addImpactDataToAudioTrack(Lcom/adobe/premiereclip/project/sequence/AudioClip;)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1311
    sget-object v0, Lcom/adobe/premiereclip/dcx/DCXWriter;->currentComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    if-eqz v0, :cond_1

    .line 1312
    sget-object v0, Lcom/adobe/premiereclip/dcx/DCXWriter;->currentComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    .line 1313
    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getAudioClipNodes(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1314
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 1315
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    .line 1316
    invoke-static {v1}, Lcom/adobe/premiereclip/dcx/DCXUtils;->appPropertiesFromNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1318
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/AudioClip;->isImpactDataSet()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1319
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/AudioClip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getAssetPath()Ljava/lang/String;

    move-result-object v2

    .line 1320
    invoke-static {v2, v4}, Lcom/adobe/premiereclip/util/Utilities;->getMD5HashFromFilePath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 1321
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/adobe/premiereclip/PremiereClipApplication;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_impact"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1322
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1323
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1324
    const-string/jumbo v4, "mediaRef"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1325
    const-string/jumbo v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getChildWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v1

    .line 1326
    if-eqz v1, :cond_1

    .line 1327
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getMutableCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v6

    .line 1329
    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getComponentsOf(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Ljava/util/List;

    move-result-object v1

    .line 1330
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    .line 1331
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getType()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "application/json"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1337
    :goto_0
    if-eqz v1, :cond_2

    .line 1338
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v0, v1, v7, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->updateComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Ljava/lang/String;Z)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1347
    :goto_1
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXWriter;->commitToDCX()V

    .line 1355
    :cond_1
    return-void

    .line 1340
    :cond_2
    :try_start_1
    const-string/jumbo v1, "SyncPoints.json"

    const-string/jumbo v3, "application/json"

    const-string/jumbo v4, "sc"

    const-string/jumbo v5, "syncPoints.json"

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->addComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/String;ZLjava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;
    :try_end_1
    .catch Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1344
    :catch_0
    move-exception v0

    .line 1345
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;->printStackTrace()V

    goto :goto_1

    :cond_3
    move-object v1, v3

    goto :goto_0
.end method

.method public static addTransitionTimesForSyncPoints(Lcom/adobe/premiereclip/project/sequence/Sequence;)V
    .locals 12

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 1232
    sget-object v0, Lcom/adobe/premiereclip/dcx/DCXWriter;->currentComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    if-eqz v0, :cond_3

    .line 1233
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getAudioTrackGroup()Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;->getAudioTrack()Lcom/adobe/premiereclip/project/sequence/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/adobe/premiereclip/project/sequence/AudioClip;

    .line 1234
    sget-object v0, Lcom/adobe/premiereclip/dcx/DCXWriter;->currentComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    .line 1235
    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getAudioClipNodes(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1236
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_3

    .line 1237
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    .line 1238
    invoke-static {v2}, Lcom/adobe/premiereclip/dcx/DCXUtils;->appPropertiesFromNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lorg/json/JSONObject;

    move-result-object v5

    .line 1240
    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/AudioClip;->isImpactDataSet()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1241
    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/AudioClip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getAssetPath()Ljava/lang/String;

    move-result-object v1

    .line 1242
    invoke-static {v1, v6}, Lcom/adobe/premiereclip/util/Utilities;->getMD5HashFromFilePath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 1243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/adobe/premiereclip/PremiereClipApplication;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, "_impact"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1244
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1245
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1248
    :try_start_0
    invoke-static {v1}, Lcom/adobe/premiereclip/util/JsonReader;->readJsonObjectFromFile(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1249
    const-string/jumbo v6, "fullImpact"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    .line 1251
    sget-object v6, Lcom/adobe/premiereclip/dcx/DCXWriter;->projectId:Ljava/lang/String;

    const-string/jumbo v7, "tempSyncPoint.json"

    invoke-static {v6, v7}, Lcom/adobe/premiereclip/util/Utilities;->generateFilepath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 1252
    :try_start_1
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 1253
    const-string/jumbo v8, "fullImpact"

    invoke-virtual {v6, v8, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1255
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->calculateTransitionTimes()Ljava/util/ArrayList;

    move-result-object v8

    .line 1256
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1257
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 1258
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 1259
    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    move v1, v4

    .line 1260
    :goto_0
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 1261
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v11, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1260
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1263
    :cond_0
    const-string/jumbo v1, "time"

    invoke-virtual {v10, v1, v11}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1264
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getAudioSyncPace()F

    move-result v1

    .line 1265
    const-string/jumbo v4, "pace"

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v10, v4, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1267
    invoke-virtual {v9, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1268
    const-string/jumbo v1, "transitions"

    invoke-virtual {v6, v1, v9}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1271
    :cond_1
    invoke-static {v6, v7}, Lcom/adobe/premiereclip/util/JsonWriter;->writeJsonObjectToFile(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1278
    :goto_1
    const-string/jumbo v1, "mediaRef"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1279
    const-string/jumbo v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getChildWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v1

    .line 1280
    if-eqz v1, :cond_3

    .line 1281
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getMutableCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v6

    .line 1283
    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getComponentsOf(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Ljava/util/List;

    move-result-object v1

    .line 1284
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    .line 1285
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getType()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "application/json"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1291
    :goto_2
    if-eqz v1, :cond_4

    .line 1292
    const/4 v2, 0x1

    :try_start_2
    invoke-virtual {v0, v1, v7, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->updateComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Ljava/lang/String;Z)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;
    :try_end_2
    .catch Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1301
    :goto_3
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXWriter;->commitToDCX()V

    .line 1308
    :cond_3
    return-void

    .line 1272
    :catch_0
    move-exception v1

    move-object v7, v3

    .line 1273
    :goto_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1274
    :catch_1
    move-exception v1

    move-object v7, v3

    .line 1275
    :goto_5
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 1294
    :cond_4
    :try_start_3
    const-string/jumbo v1, "SyncPoints.json"

    const-string/jumbo v3, "application/json"

    const-string/jumbo v4, "sc"

    const-string/jumbo v5, "syncPoints.json"

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->addComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/String;ZLjava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;
    :try_end_3
    .catch Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    .line 1298
    :catch_2
    move-exception v0

    .line 1299
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;->printStackTrace()V

    goto :goto_3

    .line 1274
    :catch_3
    move-exception v1

    goto :goto_5

    .line 1272
    :catch_4
    move-exception v1

    goto :goto_4

    :cond_5
    move-object v1, v3

    goto :goto_2
.end method

.method public static applyLook(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 249
    sget-object v0, Lcom/adobe/premiereclip/dcx/DCXWriter;->currentComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    if-eqz v0, :cond_0

    .line 250
    sget-object v0, Lcom/adobe/premiereclip/dcx/DCXWriter;->currentComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/adobe/premiereclip/dcx/DCXWriter;->setLookNodeFromLookInfo(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXWriter;->commitToDCX()V

    .line 254
    :cond_0
    return-void
.end method

.method public static commitToDCX()V
    .locals 2

    .prologue
    .line 1019
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v0

    sget-object v1, Lcom/adobe/premiereclip/dcx/DCXWriter;->currentComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/dcx/DCXModelController;->pushProjectToServer(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V

    .line 1020
    return-void
.end method

.method private static convertToDCXTime(J)J
    .locals 4

    .prologue
    .line 323
    long-to-double v0, p0

    const-wide v2, 0x40dd4c0000000000L    # 30000.0

    mul-double/2addr v0, v2

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    return-wide v0
.end method

.method private static convertToDCXTimeAudio(J)J
    .locals 4

    .prologue
    .line 327
    long-to-double v0, p0

    const-wide v2, 0x40e5888000000000L    # 44100.0

    mul-double/2addr v0, v2

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    return-wide v0
.end method

.method private static copyBumperPreferenceToProject(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1432
    invoke-static {}, Lcom/adobe/sync/database/PreferenceCompositeLoader;->getInstance()Lcom/adobe/sync/database/PreferenceCompositeLoader;

    move-result-object v0

    const-string/jumbo v2, "preferences"

    invoke-virtual {v0, v2, v1, v1}, Lcom/adobe/sync/database/PreferenceCompositeLoader;->loadComposite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    .line 1433
    if-eqz v0, :cond_1

    .line 1434
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v4

    .line 1435
    const-string/jumbo v0, "/branding/bumper"

    invoke-virtual {v4, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getChildWithAbsolutePath(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v5

    .line 1436
    if-eqz v5, :cond_1

    .line 1437
    invoke-static {v5}, Lcom/adobe/premiereclip/dcx/DCXUtils;->appPropertiesFromNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1440
    if-eqz v0, :cond_4

    .line 1441
    const-string/jumbo v2, "is_default"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1442
    const-string/jumbo v6, "mediaRef"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1444
    :goto_0
    if-eqz v2, :cond_2

    .line 1445
    sget-object v0, Lcom/adobe/premiereclip/dcx/DCXPreferencesManager;->defaultBumperPath:Ljava/lang/String;

    .line 1446
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1447
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1449
    invoke-static {}, Lcom/adobe/sync/database/CompositeLoader;->getInstance()Lcom/adobe/sync/database/CompositeLoader;

    move-result-object v2

    invoke-virtual {v2, p0, v1, v1}, Lcom/adobe/sync/database/CompositeLoader;->loadComposite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v1

    .line 1450
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v1

    .line 1451
    const-string/jumbo v2, "Default"

    invoke-static {v1, v0, v2}, Lcom/adobe/premiereclip/dcx/DCXUtils;->setBumperNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    .line 1452
    if-eqz v0, :cond_0

    .line 1453
    const-string/jumbo v0, "videoBumper"

    invoke-static {p0, v0, v3}, Lcom/adobe/premiereclip/dcx/DCXWriter;->setPreferenceKey(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1455
    :cond_0
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXWriter;->commitToDCX()V

    .line 1476
    :cond_1
    :goto_1
    return-void

    .line 1458
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1459
    const-string/jumbo v6, "/branding/bumper"

    invoke-static {v0, v6, v5, v4, v2}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getMediaFilepathForNodeInPreferencesWithAbsolutePath(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 1460
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 1461
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1462
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1464
    invoke-static {}, Lcom/adobe/sync/database/CompositeLoader;->getInstance()Lcom/adobe/sync/database/CompositeLoader;

    move-result-object v4

    invoke-virtual {v4, p0, v1, v1}, Lcom/adobe/sync/database/CompositeLoader;->loadComposite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v1

    .line 1465
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v1

    .line 1466
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/adobe/premiereclip/dcx/DCXUtils;->setBumperNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    .line 1467
    if-eqz v0, :cond_3

    .line 1468
    const-string/jumbo v0, "videoBumper"

    invoke-static {p0, v0, v3}, Lcom/adobe/premiereclip/dcx/DCXWriter;->setPreferenceKey(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1470
    :cond_3
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXWriter;->commitToDCX()V

    goto :goto_1

    :cond_4
    move-object v0, v1

    move v2, v3

    goto :goto_0
.end method

.method private static copyOverlayPreferenceToProject(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1480
    invoke-static {}, Lcom/adobe/sync/database/PreferenceCompositeLoader;->getInstance()Lcom/adobe/sync/database/PreferenceCompositeLoader;

    move-result-object v0

    const-string/jumbo v1, "preferences"

    invoke-virtual {v0, v1, v5, v5}, Lcom/adobe/sync/database/PreferenceCompositeLoader;->loadComposite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    .line 1481
    if-eqz v0, :cond_1

    .line 1482
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    .line 1483
    const-string/jumbo v1, "/branding/overlay"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getChildWithAbsolutePath(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v1

    .line 1484
    if-eqz v1, :cond_1

    .line 1485
    invoke-static {v1}, Lcom/adobe/premiereclip/dcx/DCXUtils;->appPropertiesFromNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1486
    const-string/jumbo v3, "mediaRef"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1487
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1488
    const-string/jumbo v4, "/branding/overlay"

    invoke-static {v2, v4, v1, v0, v3}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getMediaFilepathForNodeInPreferencesWithAbsolutePath(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 1489
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 1490
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1491
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1493
    invoke-static {}, Lcom/adobe/sync/database/CompositeLoader;->getInstance()Lcom/adobe/sync/database/CompositeLoader;

    move-result-object v1

    invoke-virtual {v1, p0, v5, v5}, Lcom/adobe/sync/database/CompositeLoader;->loadComposite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v1

    .line 1494
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v1

    .line 1495
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/adobe/premiereclip/dcx/DCXUtils;->setOverlayNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    .line 1496
    if-eqz v0, :cond_0

    .line 1497
    const-string/jumbo v0, "graphicOverlay"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/adobe/premiereclip/dcx/DCXWriter;->setPreferenceKey(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1499
    :cond_0
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXWriter;->commitToDCX()V

    .line 1504
    :cond_1
    return-void
.end method

.method public static createBlankProject(Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 77
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getPathToUserCompositionDirectory()Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-static {}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->getSharedAuthManager()Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->getUserProfile()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;

    move-result-object v1

    .line 79
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->getAdobeID()Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    .line 82
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 83
    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 82
    invoke-static {p0, v1, v0, v3, p3}, Lcom/adobe/premiereclip/dcx/DCXProjectFactory;->newBlankProjectDCXWithName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    .line 84
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v0

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getModelAtPath(Ljava/lang/String;)Lcom/adobe/sync/SyncController$IDCXModelInterface;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/dcx/BasicDCXModel;

    .line 85
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v1

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/adobe/premiereclip/dcx/DCXModelController;->addNewProject(Lcom/adobe/sync/SyncController$IDCXModelInterface;Ljava/lang/String;)I

    .line 86
    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static createVideoClipDCXNode(Lcom/adobe/premiereclip/project/sequence/Clip;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 731
    sget-object v0, Lcom/adobe/premiereclip/dcx/DCXWriter;->currentComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/adobe/premiereclip/dcx/DCXWriter;->getMediaReference(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;Lcom/adobe/premiereclip/project/sequence/Clip;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    .line 732
    const-string/jumbo v1, "Video Clip"

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->createNodeWithName(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v1

    .line 733
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->setNodeId(Ljava/lang/String;)V

    .line 734
    const-string/jumbo v2, "VideoClip"

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->setType(Ljava/lang/String;)V

    .line 735
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->getNodeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->setPath(Ljava/lang/String;)V

    .line 737
    sget-object v2, Lcom/adobe/premiereclip/dcx/DCXWriter;->currentComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v2

    invoke-static {v2, v1, v0, p0, p1}, Lcom/adobe/premiereclip/dcx/DCXWriter;->setAppPropertiesClipDCX(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/premiereclip/project/sequence/Clip;Ljava/lang/String;)V

    .line 739
    sget-object v0, Lcom/adobe/premiereclip/dcx/DCXWriter;->currentComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v2

    .line 740
    invoke-static {v2}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getSequenceNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getChildrenOf(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Ljava/util/List;

    move-result-object v0

    .line 742
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    .line 743
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Video Track"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 744
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getMutableCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v0

    .line 746
    :try_start_0
    invoke-virtual {v2, v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->addChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 755
    :cond_1
    :goto_0
    return-void

    .line 748
    :catch_0
    move-exception v0

    .line 749
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;->printStackTrace()V

    goto :goto_0
.end method

.method public static deleteAudioTrack()V
    .locals 5

    .prologue
    .line 1157
    sget-object v0, Lcom/adobe/premiereclip/dcx/DCXWriter;->currentComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    if-eqz v0, :cond_2

    .line 1158
    sget-object v0, Lcom/adobe/premiereclip/dcx/DCXWriter;->currentComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v2

    .line 1160
    invoke-static {v2}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getAudioTrackNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    .line 1161
    if-eqz v0, :cond_2

    .line 1163
    invoke-static {v2}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getAudioClipNodes(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1164
    const/4 v0, 0x0

    .line 1165
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    .line 1166
    const-string/jumbo v1, "apc#properties"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 1167
    const-string/jumbo v4, "mediaRef"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1168
    const-string/jumbo v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    aget-object v1, v1, v4

    invoke-virtual {v2, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getChildWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v4

    .line 1170
    const/4 v1, 0x1

    .line 1171
    invoke-virtual {v2, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->removeChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    .line 1172
    if-eqz v4, :cond_0

    .line 1173
    invoke-virtual {v2, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->removeChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    :cond_0
    move v0, v1

    .line 1174
    goto :goto_0

    .line 1175
    :cond_1
    if-eqz v0, :cond_2

    .line 1177
    invoke-static {v2}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getSequenceNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/adobe/premiereclip/dcx/DCXWriter;->updateModificationTimeForNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)V

    .line 1178
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXWriter;->commitToDCX()V

    .line 1182
    :cond_2
    return-void
.end method

.method private static getAudioMediaReference(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;Lcom/adobe/premiereclip/project/sequence/Sequence;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;
    .locals 11

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x0

    .line 1026
    invoke-static {p0}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getMediaNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v5

    .line 1027
    if-eqz v5, :cond_1

    .line 1028
    const-string/jumbo v0, "Media Reference"

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->createNodeWithName(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v10

    .line 1029
    const-string/jumbo v0, "mediaRef.audio"

    invoke-virtual {v10, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->setType(Ljava/lang/String;)V

    .line 1030
    invoke-virtual {v10}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->getNodeId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->setPath(Ljava/lang/String;)V

    .line 1034
    invoke-virtual {p1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getAudioTrackGroup()Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;->getAudioTrack()Lcom/adobe/premiereclip/project/sequence/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    .line 1035
    const-wide/16 v2, 0x0

    .line 1036
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 1037
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/AudioClip;

    .line 1039
    if-eqz v0, :cond_3

    .line 1041
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioClip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getAssetPath()Ljava/lang/String;

    move-result-object v2

    .line 1042
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioClip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getDurationUs()J

    move-result-wide v0

    move-object v4, v2

    .line 1046
    :goto_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1047
    invoke-static {v2}, Lcom/adobe/premiereclip/dcx/DCXUtils;->updateModificationTimeInDictionary(Lorg/json/JSONObject;)J

    .line 1049
    :try_start_0
    invoke-static {v2, v0, v1}, Lcom/adobe/premiereclip/dcx/DCXWriter;->setAssetDurationAndTimeScaleAudio(Lorg/json/JSONObject;J)V

    .line 1050
    const-string/jumbo v0, "assetURL"

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1052
    const-string/jumbo v0, "creationDate"

    invoke-static {v4}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getLastModifiedDateFromFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1058
    invoke-static {v10, v2}, Lcom/adobe/premiereclip/dcx/DCXUtils;->setAppPropertiesForNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;Lorg/json/JSONObject;)V

    .line 1063
    :try_start_1
    invoke-virtual {p0, v10, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->addChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v6

    .line 1066
    invoke-virtual {p1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getAudioTrackGroup()Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;->getAudioTrack()Lcom/adobe/premiereclip/project/sequence/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getAssetId()Ljava/lang/String;

    move-result-object v2

    .line 1067
    if-nez v2, :cond_0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1068
    :cond_0
    invoke-static {v4}, Lorg/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1069
    invoke-static {v4}, Lcom/adobe/premiereclip/util/Utilities;->getMimeTypefromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1071
    const-string/jumbo v1, "Audio"

    .line 1072
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 1073
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1075
    :goto_1
    invoke-static {v4}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getLastModifiedDateFromFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getUCIDForComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1077
    const-string/jumbo v4, "primary"

    const/4 v8, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->addComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;
    :try_end_1
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v9, v10

    .line 1089
    :cond_1
    :goto_2
    return-object v9

    .line 1054
    :catch_0
    move-exception v0

    .line 1055
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 1084
    :catch_1
    move-exception v0

    .line 1085
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;->printStackTrace()V

    goto :goto_2

    :cond_2
    move-object v5, v2

    goto :goto_1

    :cond_3
    move-wide v0, v2

    move-object v4, v9

    goto/16 :goto_0
.end method

.method private static getBrandingMediaReference(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 459
    invoke-static {p0}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getMediaNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v1

    .line 460
    if-eqz v1, :cond_0

    .line 461
    const-string/jumbo v0, "Media Reference"

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->createNodeWithName(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v9

    .line 462
    const-string/jumbo v0, "mediaRef.video"

    invoke-virtual {v9, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->setType(Ljava/lang/String;)V

    .line 463
    invoke-virtual {v9}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->getNodeId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->setPath(Ljava/lang/String;)V

    .line 466
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 467
    invoke-static {v2}, Lcom/adobe/premiereclip/dcx/DCXUtils;->updateModificationTimeInDictionary(Lorg/json/JSONObject;)J

    .line 469
    :try_start_0
    const-string/jumbo v0, "assetURL"

    invoke-virtual {v2, v0, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 470
    const-string/jumbo v0, "fileName"

    invoke-virtual {v2, v0, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 472
    const-string/jumbo v0, "creationDate"

    invoke-virtual {v2, v0, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    :goto_0
    invoke-static {v9, v2}, Lcom/adobe/premiereclip/dcx/DCXUtils;->setAppPropertiesForNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;Lorg/json/JSONObject;)V

    .line 481
    :try_start_1
    invoke-virtual {p0, v9, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->addChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v6

    .line 484
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 485
    invoke-static {p1}, Lorg/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 486
    invoke-static {p1}, Lcom/adobe/premiereclip/util/Utilities;->getMimeTypefromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 488
    const-string/jumbo v1, "Video"

    .line 489
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 490
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 492
    :goto_1
    invoke-static {p1, p3}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getUCIDForComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 493
    invoke-static {}, Lcom/adobe/sync/ComponentManagerHelper;->getInstance()Lcom/adobe/sync/ComponentManagerHelper;

    move-result-object v0

    .line 494
    invoke-virtual {v0}, Lcom/adobe/sync/ComponentManagerHelper;->initialize()V
    :try_end_1
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_1 .. :try_end_1} :catch_2

    .line 497
    :try_start_2
    invoke-virtual {v0, v7}, Lcom/adobe/sync/ComponentManagerHelper;->getAvailableHrefForUCID(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v8

    .line 502
    :goto_2
    :try_start_3
    const-string/jumbo v4, "primary"

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->addComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;
    :try_end_3
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v0, v9

    .line 513
    :goto_3
    return-object v0

    .line 474
    :catch_0
    move-exception v0

    .line 475
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 498
    :catch_1
    move-exception v0

    .line 499
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_4 .. :try_end_4} :catch_2

    move-object v8, v10

    goto :goto_2

    .line 508
    :catch_2
    move-exception v0

    .line 509
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;->printStackTrace()V

    :cond_0
    move-object v0, v10

    .line 513
    goto :goto_3

    :cond_1
    move-object v5, v2

    goto :goto_1
.end method

.method private static getClipAudioComponents(Lcom/adobe/premiereclip/project/sequence/Clip;)Lorg/json/JSONArray;
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 604
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 605
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 607
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getSmartVolumeApplied()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 608
    :goto_0
    const-string/jumbo v5, "Offset"

    const/16 v6, 0xf

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 609
    const-string/jumbo v5, "Noise Gate Active"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 610
    const-string/jumbo v5, "bypass"

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 611
    const-string/jumbo v0, "compressionActive"

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 612
    const-string/jumbo v0, "Threshold"

    const/4 v5, -0x6

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 613
    const-string/jumbo v0, "Boost Low Signals"

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 614
    const-string/jumbo v0, "Leveling Amount"

    const-wide v6, 0x3fd999999999999aL    # 0.4

    invoke-virtual {v4, v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 615
    const-string/jumbo v0, "type"

    const-string/jumbo v5, "audio.smartVolume"

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 616
    const-string/jumbo v0, "Volume Level"

    const/16 v5, -0xa

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 622
    :goto_1
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 624
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 627
    :try_start_1
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAudioFadeInApplied()Z

    move-result v0

    .line 628
    const-string/jumbo v5, "Duration"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 629
    const-string/jumbo v5, "type"

    const-string/jumbo v6, "audio.fade"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 630
    const-string/jumbo v5, "Fade In"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 631
    const-string/jumbo v5, "bypass"

    if-nez v0, :cond_1

    move v0, v1

    :goto_2
    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 637
    :goto_3
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 639
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 642
    :try_start_2
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAudioFadeOutApplied()Z

    move-result v0

    .line 643
    const-string/jumbo v5, "Duration"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 644
    const-string/jumbo v5, "type"

    const-string/jumbo v6, "audio.fade"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 645
    const-string/jumbo v5, "Fade In"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 646
    const-string/jumbo v5, "bypass"

    if-nez v0, :cond_2

    move v0, v1

    :goto_4
    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 653
    :goto_5
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 655
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 658
    :try_start_3
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getVolume()F

    move-result v0

    .line 659
    const-string/jumbo v5, "type"

    const-string/jumbo v6, "audio.volume"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 660
    const-string/jumbo v5, "bypass"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 661
    const-string/jumbo v5, "Gain"

    float-to-double v6, v0

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 667
    :goto_6
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 669
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 672
    :try_start_4
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/Clip;->isMuted()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 673
    :goto_7
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "audio.mute"

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 674
    const-string/jumbo v1, "bypass"

    const/4 v2, 0x0

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 675
    const-string/jumbo v1, "Mute"

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    .line 681
    :goto_8
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 683
    return-object v3

    :cond_0
    move v0, v2

    .line 607
    goto/16 :goto_0

    .line 618
    :catch_0
    move-exception v0

    .line 619
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    :cond_1
    move v0, v2

    .line 631
    goto/16 :goto_2

    .line 633
    :catch_1
    move-exception v0

    .line 634
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_3

    :cond_2
    move v0, v2

    .line 646
    goto :goto_4

    .line 649
    :catch_2
    move-exception v0

    .line 650
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_5

    .line 663
    :catch_3
    move-exception v0

    .line 664
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_6

    :cond_3
    move v0, v2

    .line 672
    goto :goto_7

    .line 677
    :catch_4
    move-exception v0

    .line 678
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_8
.end method

.method private static getClipVideoComponents(Lcom/adobe/premiereclip/project/sequence/Clip;)Lorg/json/JSONArray;
    .locals 14

    .prologue
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 696
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 697
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 698
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 699
    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    .line 700
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    .line 701
    if-eqz p0, :cond_0

    .line 704
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipOptionEffects()Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;

    move-result-object v13

    .line 705
    if-eqz v13, :cond_0

    .line 706
    invoke-virtual {v13}, Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;->getShadows()F

    move-result v0

    float-to-double v4, v0

    .line 707
    invoke-virtual {v13}, Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;->getHighlights()F

    move-result v0

    float-to-double v2, v0

    .line 708
    invoke-virtual {v13}, Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;->getDCXExposure()D

    move-result-wide v0

    .line 712
    :goto_0
    :try_start_0
    const-string/jumbo v13, "shadows"

    invoke-virtual {v7, v13, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 713
    const-string/jumbo v4, "bypass"

    invoke-virtual {v7, v4, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 714
    const-string/jumbo v4, "gain"

    invoke-virtual {v7, v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 715
    const-string/jumbo v0, "endFrame"

    invoke-virtual {v7, v0, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 716
    const-string/jumbo v0, "startFrame"

    invoke-virtual {v7, v0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 717
    const-string/jumbo v0, "type"

    const-string/jumbo v1, "video.exposure"

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 718
    const-string/jumbo v0, "highlights"

    invoke-virtual {v7, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 724
    :goto_1
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 725
    return-object v6

    .line 720
    :catch_0
    move-exception v0

    .line 721
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :cond_0
    move-wide v4, v2

    goto :goto_0
.end method

.method private static getMediaReference(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;Lcom/adobe/premiereclip/project/sequence/Clip;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;
    .locals 14

    .prologue
    const/4 v10, 0x0

    const/4 v0, 0x1

    .line 382
    invoke-static {p0}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getMediaNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v1

    .line 383
    invoke-virtual {p1}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v4

    .line 384
    if-eqz v1, :cond_5

    .line 385
    invoke-virtual {p1}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipType()Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    move-result-object v2

    sget-object v3, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->IMAGE_TITLE:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    if-ne v2, v3, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 386
    invoke-virtual {v4}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getAssetId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getComponentWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v0

    .line 388
    if-eqz v0, :cond_1

    .line 389
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->findParentOfComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    .line 454
    :goto_1
    return-object v0

    .line 385
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 391
    :cond_1
    const-string/jumbo v0, "Media Reference"

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->createNodeWithName(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v9

    .line 392
    const-string/jumbo v0, "mediaRef.video"

    invoke-virtual {v9, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->setType(Ljava/lang/String;)V

    .line 393
    invoke-virtual {v9}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->getNodeId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->setPath(Ljava/lang/String;)V

    .line 396
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 397
    invoke-static {v2}, Lcom/adobe/premiereclip/dcx/DCXUtils;->updateModificationTimeInDictionary(Lorg/json/JSONObject;)J

    .line 399
    :try_start_0
    invoke-virtual {v4}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getDurationUs()J

    move-result-wide v12

    invoke-static {v2, v12, v13}, Lcom/adobe/premiereclip/dcx/DCXWriter;->setAssetDurationAndTimeScale(Lorg/json/JSONObject;J)V

    .line 401
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 403
    const-string/jumbo v0, "isSynthetic"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 406
    :cond_2
    const-string/jumbo v0, "assetURL"

    invoke-virtual {v4}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getOriginalAssetPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 408
    const-string/jumbo v0, "creationDate"

    invoke-virtual {v4}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getOriginalAssetDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    :goto_2
    invoke-static {v9, v2}, Lcom/adobe/premiereclip/dcx/DCXUtils;->setAppPropertiesForNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;Lorg/json/JSONObject;)V

    .line 417
    :try_start_1
    invoke-virtual {p0, v9, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->addChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v6

    .line 420
    invoke-virtual {v4}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getAssetId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v4}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getAssetId()Ljava/lang/String;

    move-result-object v2

    .line 421
    :goto_3
    invoke-virtual {v4}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getAssetPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 422
    invoke-virtual {v4}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getAssetPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/premiereclip/util/Utilities;->getMimeTypefromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 424
    const-string/jumbo v1, "Video"

    .line 425
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_6

    .line 426
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, "."

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 429
    :goto_4
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 430
    const-string/jumbo v1, "Title Image"

    .line 433
    :cond_3
    invoke-virtual {v4}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getOriginalAssetPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getOriginalAssetDate()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getUCIDForComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 434
    invoke-static {}, Lcom/adobe/sync/ComponentManagerHelper;->getInstance()Lcom/adobe/sync/ComponentManagerHelper;

    move-result-object v0

    .line 435
    invoke-virtual {v0}, Lcom/adobe/sync/ComponentManagerHelper;->initialize()V
    :try_end_1
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_1 .. :try_end_1} :catch_2

    .line 438
    :try_start_2
    invoke-virtual {v0, v7}, Lcom/adobe/sync/ComponentManagerHelper;->getAvailableHrefForUCID(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v8

    .line 443
    :goto_5
    :try_start_3
    const-string/jumbo v4, "primary"

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->addComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;
    :try_end_3
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v0, v9

    .line 445
    goto/16 :goto_1

    .line 410
    :catch_0
    move-exception v0

    .line 411
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 420
    :cond_4
    :try_start_4
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 439
    :catch_1
    move-exception v0

    .line 440
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_4 .. :try_end_4} :catch_2

    move-object v8, v10

    goto :goto_5

    .line 449
    :catch_2
    move-exception v0

    .line 450
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;->printStackTrace()V

    :cond_5
    move-object v0, v10

    .line 454
    goto/16 :goto_1

    :cond_6
    move-object v5, v2

    goto :goto_4
.end method

.method private static getSequenceAudioComponents(Lcom/adobe/premiereclip/project/sequence/Sequence;)Lorg/json/JSONArray;
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1358
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 1360
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 1363
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getAudioFadeInApplied()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1364
    const-string/jumbo v5, "Duration"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1365
    const-string/jumbo v5, "type"

    const-string/jumbo v6, "audio.fade"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1366
    const-string/jumbo v5, "Fade In"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1367
    const-string/jumbo v5, "bypass"

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1373
    :goto_1
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1375
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 1378
    :try_start_1
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getAudioFadeOutApplied()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1379
    const-string/jumbo v5, "Duration"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1380
    const-string/jumbo v5, "type"

    const-string/jumbo v6, "audio.fade"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1381
    const-string/jumbo v5, "Fade In"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1382
    const-string/jumbo v5, "bypass"

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_2
    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1389
    :goto_3
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1391
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1394
    :try_start_2
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getVolume()F

    move-result v0

    .line 1395
    const-string/jumbo v2, "type"

    const-string/jumbo v4, "audio.volume"

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1396
    const-string/jumbo v2, "bypass"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1397
    const-string/jumbo v2, "Gain"

    float-to-double v4, v0

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1403
    :goto_4
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1405
    return-object v3

    :cond_0
    move v0, v2

    .line 1367
    goto :goto_0

    .line 1369
    :catch_0
    move-exception v0

    .line 1370
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :cond_1
    move v0, v2

    .line 1382
    goto :goto_2

    .line 1385
    :catch_1
    move-exception v0

    .line 1386
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    .line 1399
    :catch_2
    move-exception v0

    .line 1400
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4
.end method

.method public static moveClips(Lcom/adobe/premiereclip/project/sequence/Clip;Ljava/util/ArrayList;Lcom/adobe/premiereclip/project/sequence/Clip;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/premiereclip/project/sequence/Clip;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/project/sequence/Clip;",
            ">;",
            "Lcom/adobe/premiereclip/project/sequence/Clip;",
            ")V"
        }
    .end annotation

    .prologue
    .line 800
    sget-object v0, Lcom/adobe/premiereclip/dcx/DCXWriter;->currentComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    if-eqz v0, :cond_1

    .line 801
    sget-object v0, Lcom/adobe/premiereclip/dcx/DCXWriter;->currentComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/adobe/premiereclip/dcx/DCXUtils;->JSONObjectExists(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;Lcom/adobe/premiereclip/project/sequence/Clip;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/adobe/premiereclip/dcx/DCXWriter;->currentComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    .line 802
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/adobe/premiereclip/dcx/DCXUtils;->JSONObjectExists(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;Lcom/adobe/premiereclip/project/sequence/Clip;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 804
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 806
    sget-object v2, Lcom/adobe/premiereclip/dcx/DCXWriter;->currentComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v2

    invoke-static {v2, p0, p2}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getSortableValueOfCurrentClip(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;Lcom/adobe/premiereclip/project/sequence/Clip;Lcom/adobe/premiereclip/project/sequence/Clip;)Ljava/lang/String;

    move-result-object v2

    .line 807
    invoke-static {v0, v2}, Lcom/adobe/premiereclip/dcx/DCXWriter;->updateSortableValue(Lcom/adobe/premiereclip/project/sequence/Clip;Ljava/lang/String;)V

    move-object p0, v0

    .line 809
    goto :goto_0

    .line 810
    :cond_0
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXWriter;->commitToDCX()V

    .line 813
    :cond_1
    return-void
.end method

.method public static removeClip(Lcom/adobe/premiereclip/project/sequence/Clip;)V
    .locals 3

    .prologue
    .line 818
    sget-object v0, Lcom/adobe/premiereclip/dcx/DCXWriter;->currentComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    if-eqz v0, :cond_1

    .line 820
    invoke-static {}, Lcom/adobe/sync/ComponentManagerHelper;->getInstance()Lcom/adobe/sync/ComponentManagerHelper;

    move-result-object v0

    .line 821
    invoke-virtual {v0}, Lcom/adobe/sync/ComponentManagerHelper;->initialize()V

    .line 823
    :try_start_0
    sget-object v1, Lcom/adobe/premiereclip/dcx/DCXWriter;->currentComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v1

    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getAssetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getComponentWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v1

    .line 824
    if-eqz v1, :cond_0

    sget-object v2, Lcom/adobe/premiereclip/dcx/DCXWriter;->currentComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/adobe/premiereclip/dcx/DCXUtils;->isComponentUsedByClips(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 825
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getAssetId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/sync/ComponentManagerHelper;->deleteComponentWaiting(Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/adobe/sync/DBException; {:try_start_0 .. :try_end_0} :catch_0

    .line 830
    :cond_0
    :goto_0
    sget-object v0, Lcom/adobe/premiereclip/dcx/DCXWriter;->currentComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/dcx/DCXUtils;->removeNodeWithIdFromComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;Ljava/lang/String;)V

    .line 831
    sget-object v0, Lcom/adobe/premiereclip/dcx/DCXWriter;->currentComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXUtils;->removeUnusedMediaRefNodes(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;)V

    .line 832
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXWriter;->commitToDCX()V

    .line 835
    :cond_1
    return-void

    .line 827
    :catch_0
    move-exception v0

    .line 828
    invoke-virtual {v0}, Lcom/adobe/sync/DBException;->printStackTrace()V

    goto :goto_0
.end method

.method public static removeClips(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/project/sequence/Clip;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 838
    sget-object v0, Lcom/adobe/premiereclip/dcx/DCXWriter;->currentComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    if-eqz v0, :cond_1

    .line 839
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 841
    sget-object v2, Lcom/adobe/premiereclip/dcx/DCXWriter;->currentComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v2

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/adobe/premiereclip/dcx/DCXUtils;->removeNodeWithIdFromComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;Ljava/lang/String;)V

    .line 842
    sget-object v0, Lcom/adobe/premiereclip/dcx/DCXWriter;->currentComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXUtils;->removeUnusedMediaRefNodes(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;)V

    goto :goto_0

    .line 844
    :cond_0
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXWriter;->commitToDCX()V

    .line 846
    :cond_1
    return-void
.end method

.method private static resetProjectBumper(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1409
    invoke-static {p0}, Lcom/adobe/premiereclip/dcx/DCXUtils;->removeBumperNodesInComposite(Ljava/lang/String;)V

    .line 1410
    const-string/jumbo v0, "videoBumper"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/adobe/premiereclip/dcx/DCXWriter;->setPreferenceKey(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1411
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXWriter;->commitToDCX()V

    .line 1412
    return-void
.end method

.method private static resetProjectOverlay(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1415
    invoke-static {p0}, Lcom/adobe/premiereclip/dcx/DCXUtils;->removeOverlayNodesInComposite(Ljava/lang/String;)V

    .line 1416
    const-string/jumbo v0, "graphicOverlay"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/adobe/premiereclip/dcx/DCXWriter;->setPreferenceKey(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1417
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXWriter;->commitToDCX()V

    .line 1418
    return-void
.end method

.method private static setAppPropertiesClipDCX(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/premiereclip/project/sequence/Clip;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 520
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXProjectKeys;->GetSequenceNumberOfChannels()I

    move-result v2

    .line 521
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXProjectKeys;->GetSequenceAudioSampleRate()I

    .line 523
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 527
    :try_start_0
    const-string/jumbo v4, "numChannels"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    :goto_0
    invoke-virtual {p3}, Lcom/adobe/premiereclip/project/sequence/Clip;->getSpeed()F

    move-result v2

    .line 535
    :try_start_1
    const-string/jumbo v4, "speed"

    float-to-double v6, v2

    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 541
    :goto_1
    :try_start_2
    const-string/jumbo v2, "numChannels"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 548
    :goto_2
    invoke-static {p3}, Lcom/adobe/premiereclip/dcx/DCXWriter;->getClipAudioComponents(Lcom/adobe/premiereclip/project/sequence/Clip;)Lorg/json/JSONArray;

    move-result-object v2

    .line 550
    :try_start_3
    const-string/jumbo v4, "audioComponents"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 557
    :goto_3
    invoke-static {p3}, Lcom/adobe/premiereclip/dcx/DCXWriter;->getClipVideoComponents(Lcom/adobe/premiereclip/project/sequence/Clip;)Lorg/json/JSONArray;

    move-result-object v2

    .line 559
    :try_start_4
    const-string/jumbo v4, "videoComponents"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    .line 565
    :goto_4
    invoke-static {v3}, Lcom/adobe/premiereclip/dcx/DCXUtils;->updateModificationTimeInDictionary(Lorg/json/JSONObject;)J

    .line 568
    const-string/jumbo v2, "0.0000 0.0000 0.0000 1.0000"

    .line 569
    const-string/jumbo v4, "1.0000 1.0000 1.0000 1.0000"

    .line 571
    :try_start_5
    invoke-static {v3, p3}, Lcom/adobe/premiereclip/dcx/DCXWriter;->setClipContentIn(Lorg/json/JSONObject;Lcom/adobe/premiereclip/project/sequence/Clip;)V

    .line 572
    invoke-static {v3, p3}, Lcom/adobe/premiereclip/dcx/DCXWriter;->setClipDuration(Lorg/json/JSONObject;Lcom/adobe/premiereclip/project/sequence/Clip;)V

    .line 573
    const-string/jumbo v5, "sortableValue"

    invoke-virtual {v3, v5, p4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 574
    const-string/jumbo v5, "backgroundColor"

    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 575
    const-string/jumbo v2, "titleColor"

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 576
    const-string/jumbo v2, "mediaRef"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "/media/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getNodeId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 578
    invoke-virtual {p3}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipType()Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    move-result-object v2

    sget-object v4, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->IMAGE_TITLE:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    if-ne v2, v4, :cond_0

    .line 579
    move-object v0, p3

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/ImageClip;

    move-object v2, v0

    .line 580
    const-string/jumbo v4, "backgroundColor"

    move-object v0, p3

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/ImageClip;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/ImageClip;->getBackgroundColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adobe/premiereclip/util/Utilities;->hexStringToRgbaString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 581
    const-string/jumbo v4, "titleColor"

    move-object v0, p3

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/ImageClip;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/ImageClip;->getTextColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adobe/premiereclip/util/Utilities;->hexStringToRgbaString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 582
    const-string/jumbo v4, "title"

    move-object v0, p3

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/ImageClip;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/ImageClip;->getTitleText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 583
    const-string/jumbo v2, "isTitleClip"

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 585
    :cond_0
    instance-of v2, p3, Lcom/adobe/premiereclip/project/sequence/ImageClip;

    if-eqz v2, :cond_1

    move-object v0, p3

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/ImageClip;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/ImageClip;->isStoryCard()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 586
    const-string/jumbo v4, "title"

    move-object v0, p3

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/ImageClip;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/ImageClip;->getStoryCardText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 587
    const-string/jumbo v2, "isStoryCard"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 589
    :cond_1
    invoke-virtual {p3}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipGroupId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 590
    const-string/jumbo v2, "clipGroupId"

    invoke-virtual {p3}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipGroupId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    .line 599
    :cond_2
    :goto_5
    invoke-static {p1, v3}, Lcom/adobe/premiereclip/dcx/DCXUtils;->setAppPropertiesForNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;Lorg/json/JSONObject;)V

    .line 601
    return-void

    .line 529
    :catch_0
    move-exception v2

    .line 530
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 536
    :catch_1
    move-exception v2

    .line 537
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    .line 543
    :catch_2
    move-exception v2

    .line 544
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_2

    .line 552
    :catch_3
    move-exception v2

    .line 553
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_3

    .line 561
    :catch_4
    move-exception v2

    .line 562
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_4

    .line 594
    :catch_5
    move-exception v2

    .line 595
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_5
.end method

.method private static setAssetDurationAndTimeScale(Lorg/json/JSONObject;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 331
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 332
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 333
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    sget-wide v0, Lcom/adobe/premiereclip/dcx/DCXWriter;->DEFAULT_ASSET_DURATION:J

    .line 334
    :goto_0
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 336
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 337
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 338
    const-wide/16 v4, 0x7530

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 340
    const-string/jumbo v1, "duration"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 341
    const-string/jumbo v1, "timeScale"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 342
    return-void

    .line 333
    :cond_0
    invoke-static {p1, p2}, Lcom/adobe/premiereclip/dcx/DCXWriter;->convertToDCXTime(J)J

    move-result-wide v0

    goto :goto_0
.end method

.method private static setAssetDurationAndTimeScaleAudio(Lorg/json/JSONObject;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 345
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 346
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 347
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    sget-wide v0, Lcom/adobe/premiereclip/dcx/DCXWriter;->DEFAULT_ASSET_DURATION:J

    .line 348
    :goto_0
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 350
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 351
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 352
    const-wide/32 v4, 0xac44

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 354
    const-string/jumbo v1, "duration"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 355
    const-string/jumbo v1, "timeScale"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 356
    return-void

    .line 347
    :cond_0
    invoke-static {p1, p2}, Lcom/adobe/premiereclip/dcx/DCXWriter;->convertToDCXTimeAudio(J)J

    move-result-wide v0

    goto :goto_0
.end method

.method private static setBooleanPropertySequence(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;ZLjava/lang/String;)V
    .locals 1

    .prologue
    .line 291
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {p0, v0, p2}, Lcom/adobe/premiereclip/dcx/DCXWriter;->setPropertySequence(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    return-void
.end method

.method public static setBumperPreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 1553
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXPreferencesManager;->getInstance()Lcom/adobe/premiereclip/dcx/DCXPreferencesManager;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/adobe/premiereclip/dcx/DCXPreferencesManager;->setupPreferences(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    .line 1554
    if-nez v0, :cond_1

    .line 1556
    invoke-static {}, Lcom/adobe/sync/database/PreferenceCompositeLoader;->getInstance()Lcom/adobe/sync/database/PreferenceCompositeLoader;

    move-result-object v0

    const-string/jumbo v1, "preferences"

    invoke-virtual {v0, v1, v2, v2}, Lcom/adobe/sync/database/PreferenceCompositeLoader;->loadComposite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    .line 1557
    if-nez v0, :cond_1

    .line 1558
    const-string/jumbo v0, "DCXWriter"

    const-string/jumbo v1, "Error: Not able to create/find composite to load for preferences"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v1, v0

    .line 1563
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v4

    .line 1566
    const-string/jumbo v0, "/branding/bumper"

    invoke-virtual {v4, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getChildWithAbsolutePath(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v5

    .line 1568
    if-eqz p0, :cond_4

    .line 1571
    if-nez p3, :cond_7

    .line 1572
    invoke-static {v4, p0, p1, p2}, Lcom/adobe/premiereclip/dcx/DCXWriter;->getBrandingMediaReference(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    .line 1573
    if-nez v0, :cond_2

    .line 1574
    const-string/jumbo v0, "DCXWriter"

    const-string/jumbo v1, "Error adding mediaRefNode."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object v3, v0

    .line 1578
    :goto_1
    if-eqz v5, :cond_0

    .line 1579
    const-string/jumbo v0, "apc#properties"

    invoke-virtual {v5, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 1580
    if-nez v0, :cond_6

    .line 1581
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object v2, v0

    .line 1583
    :goto_2
    if-nez p3, :cond_3

    .line 1585
    :try_start_0
    const-string/jumbo v0, "is_default"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v0, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1586
    const-string/jumbo v0, "mediaRef"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "/media/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getNodeId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1598
    :goto_3
    invoke-virtual {v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getMutableCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v0

    .line 1599
    invoke-static {v0, v2}, Lcom/adobe/premiereclip/dcx/DCXUtils;->setAppPropertiesForNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;Lorg/json/JSONObject;)V

    .line 1601
    :try_start_1
    invoke-virtual {v4, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->updateChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;
    :try_end_1
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1606
    :goto_4
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/dcx/DCXModelController;->pushProjectToServer(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V

    goto :goto_0

    .line 1587
    :catch_0
    move-exception v0

    .line 1588
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    .line 1593
    :cond_3
    :try_start_2
    const-string/jumbo v0, "is_default"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 1594
    :catch_1
    move-exception v0

    .line 1595
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    .line 1603
    :catch_2
    move-exception v0

    .line 1604
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;->printStackTrace()V

    goto :goto_4

    .line 1610
    :cond_4
    if-eqz v5, :cond_0

    .line 1612
    const-string/jumbo v0, "apc#properties"

    invoke-virtual {v5, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 1613
    if-eqz v0, :cond_5

    .line 1614
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1616
    :try_start_3
    const-string/jumbo v0, "state"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1620
    :goto_5
    invoke-virtual {v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getMutableCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v0

    .line 1621
    invoke-static {v0, v2}, Lcom/adobe/premiereclip/dcx/DCXUtils;->setAppPropertiesForNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;Lorg/json/JSONObject;)V

    .line 1623
    :try_start_4
    invoke-virtual {v4, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->updateChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;
    :try_end_4
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_4 .. :try_end_4} :catch_4

    .line 1628
    :cond_5
    :goto_6
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/dcx/DCXModelController;->pushProjectToServer(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V

    goto/16 :goto_0

    .line 1617
    :catch_3
    move-exception v0

    .line 1618
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_5

    .line 1624
    :catch_4
    move-exception v0

    .line 1625
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;->printStackTrace()V

    goto :goto_6

    :cond_6
    move-object v2, v0

    goto/16 :goto_2

    :cond_7
    move-object v3, v2

    goto/16 :goto_1
.end method

.method private static setClipContentIn(Lorg/json/JSONObject;Lcom/adobe/premiereclip/project/sequence/Clip;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 359
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 360
    invoke-virtual {p1}, Lcom/adobe/premiereclip/project/sequence/Clip;->getStartTimeUsWithSpeed()J

    move-result-wide v0

    .line 362
    instance-of v3, p1, Lcom/adobe/premiereclip/project/sequence/AudioClip;

    if-nez v3, :cond_0

    .line 363
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/dcx/DCXWriter;->convertToDCXTime(J)J

    move-result-wide v0

    .line 367
    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 368
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 369
    const-string/jumbo v0, "contentInPoint"

    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 370
    return-void

    .line 365
    :cond_0
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/dcx/DCXWriter;->convertToDCXTimeAudio(J)J

    move-result-wide v0

    goto :goto_0
.end method

.method private static setClipDuration(Lorg/json/JSONObject;Lcom/adobe/premiereclip/project/sequence/Clip;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 373
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 374
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 375
    invoke-virtual {p1}, Lcom/adobe/premiereclip/project/sequence/Clip;->getDurationUsWithSpeed()J

    move-result-wide v2

    .line 376
    invoke-static {v2, v3}, Lcom/adobe/premiereclip/dcx/DCXWriter;->convertToDCXTime(J)J

    move-result-wide v2

    .line 377
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 378
    const-string/jumbo v1, "duration"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 379
    return-void
.end method

.method public static setCrossDissolves(Z)V
    .locals 2

    .prologue
    .line 309
    sget-object v0, Lcom/adobe/premiereclip/dcx/DCXWriter;->currentComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    if-eqz v0, :cond_0

    .line 310
    sget-object v0, Lcom/adobe/premiereclip/dcx/DCXWriter;->currentComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    const-string/jumbo v1, "crossDissolves"

    invoke-static {v0, p0, v1}, Lcom/adobe/premiereclip/dcx/DCXWriter;->setBooleanPropertySequence(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;ZLjava/lang/String;)V

    .line 311
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXWriter;->commitToDCX()V

    .line 313
    :cond_0
    return-void
.end method

.method public static setCurrentComposite(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 90
    sput-object p0, Lcom/adobe/premiereclip/dcx/DCXWriter;->projectId:Ljava/lang/String;

    .line 91
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getProjectPathFromProjectId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/adobe/premiereclip/dcx/DCXModelController;->loadComposite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    sput-object v0, Lcom/adobe/premiereclip/dcx/DCXWriter;->currentComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    .line 94
    return-void
.end method

.method public static setFadeIn(Z)V
    .locals 2

    .prologue
    .line 295
    sget-object v0, Lcom/adobe/premiereclip/dcx/DCXWriter;->currentComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    if-eqz v0, :cond_0

    .line 296
    sget-object v0, Lcom/adobe/premiereclip/dcx/DCXWriter;->currentComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    const-string/jumbo v1, "fadeIn"

    invoke-static {v0, p0, v1}, Lcom/adobe/premiereclip/dcx/DCXWriter;->setBooleanPropertySequence(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;ZLjava/lang/String;)V

    .line 297
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXWriter;->commitToDCX()V

    .line 299
    :cond_0
    return-void
.end method

.method public static setFadeOut(Z)V
    .locals 2

    .prologue
    .line 302
    sget-object v0, Lcom/adobe/premiereclip/dcx/DCXWriter;->currentComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    if-eqz v0, :cond_0

    .line 303
    sget-object v0, Lcom/adobe/premiereclip/dcx/DCXWriter;->currentComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    const-string/jumbo v1, "fadeOut"

    invoke-static {v0, p0, v1}, Lcom/adobe/premiereclip/dcx/DCXWriter;->setBooleanPropertySequence(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;ZLjava/lang/String;)V

    .line 304
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXWriter;->commitToDCX()V

    .line 306
    :cond_0
    return-void
.end method

.method private static setFloatPropertySequence(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;FLjava/lang/String;)V
    .locals 1

    .prologue
    .line 287
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p1}, Ljava/lang/Float;-><init>(F)V

    invoke-static {p0, v0, p2}, Lcom/adobe/premiereclip/dcx/DCXWriter;->setPropertySequence(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    return-void
.end method

.method public static setGraphicOverlay(ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 1515
    if-eqz p0, :cond_0

    .line 1516
    invoke-static {p1}, Lcom/adobe/premiereclip/dcx/DCXWriter;->copyOverlayPreferenceToProject(Ljava/lang/String;)V

    .line 1520
    :goto_0
    return-void

    .line 1518
    :cond_0
    invoke-static {p1}, Lcom/adobe/premiereclip/dcx/DCXWriter;->resetProjectOverlay(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static setLookNodeFromLookInfo(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    .prologue
    .line 111
    if-nez p0, :cond_1

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    invoke-static {p0}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getSequenceNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v1

    .line 115
    if-eqz v1, :cond_0

    .line 117
    invoke-static {p0}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getLookNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v2

    .line 118
    if-eqz v2, :cond_2

    .line 120
    invoke-virtual {p0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->removeChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    .line 124
    :cond_2
    invoke-static {p0, v1}, Lcom/adobe/premiereclip/dcx/DCXWriter;->updateModificationTimeForNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)V

    .line 127
    const-string/jumbo v1, "Normal"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p4, :cond_0

    .line 132
    :cond_3
    invoke-static {p0}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getSequenceNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v2

    .line 134
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 135
    if-eqz p5, :cond_4

    move-object/from16 v1, p5

    .line 141
    :cond_4
    new-instance v3, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    invoke-direct {v3, v1, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string/jumbo v4, "application/vnd.adobe.element.look+dcx"

    invoke-virtual {v3, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->setType(Ljava/lang/String;)V

    .line 143
    const-string/jumbo v4, "look"

    invoke-virtual {v3, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->setPath(Ljava/lang/String;)V

    .line 147
    :try_start_0
    invoke-virtual {p0, v3, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->addChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v2

    .line 148
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getMutableCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v7

    .line 155
    const/4 v2, 0x0

    .line 156
    if-nez p3, :cond_8

    .line 158
    invoke-static {p1}, Lcom/adobe/premiereclip/looks/LocalLooks;->getLookFromLookName(Ljava/lang/String;)Lcom/adobe/premiereclip/looks/ClipLook;

    move-result-object v2

    .line 159
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "gra_looks_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x1

    if-le v3, v5, :cond_7

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 160
    const-string/jumbo v4, "png"

    .line 161
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/adobe/premiereclip/PremiereClipApplication;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/looks/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 162
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_5

    .line 165
    invoke-static {}, Lcom/adobe/premiereclip/PremiereClipApplication;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v2}, Lcom/adobe/premiereclip/looks/ClipLook;->getDrawableId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 167
    :try_start_1
    invoke-static {v5, v3}, Lorg/apache/commons/io/FileUtils;->copyInputStreamToFile(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_1 .. :try_end_1} :catch_0

    .line 176
    :cond_5
    :try_start_2
    const-string/jumbo v3, "built-in"

    move-object v10, v2

    move-object v11, v3

    move-object v6, v4

    .line 184
    :goto_2
    invoke-static {v8}, Lcom/adobe/premiereclip/util/Utilities;->getMimeTypefromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 186
    if-eqz v8, :cond_b

    .line 187
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 188
    const-string/jumbo v2, "Look Image"

    const-string/jumbo v5, "rendition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v9, "."

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->addComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/String;Z)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-object v2, v3

    .line 192
    :goto_3
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_2 .. :try_end_2} :catch_0

    .line 194
    :try_start_3
    const-string/jumbo v1, "type"

    invoke-virtual {v12, v1, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_3 .. :try_end_3} :catch_0

    .line 202
    :goto_4
    if-nez p2, :cond_a

    .line 203
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v4, 0x1

    if-le v1, v4, :cond_9

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :goto_5
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ".cube"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 204
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/adobe/premiereclip/PremiereClipApplication;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/cubes/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 205
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_6

    .line 208
    invoke-static {}, Lcom/adobe/premiereclip/PremiereClipApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v10}, Lcom/adobe/premiereclip/looks/ClipLook;->getRawId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_4
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v3

    .line 210
    :try_start_5
    invoke-static {v3, v1}, Lorg/apache/commons/io/FileUtils;->copyInputStreamToFile(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_5 .. :try_end_5} :catch_0

    :cond_6
    move-object/from16 p5, v2

    .line 232
    :goto_6
    :try_start_6
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 233
    const-string/jumbo v2, "Look Cube File"

    const-string/jumbo v4, "application/vnd.adobe.cube+txt"

    const-string/jumbo v5, "primary"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, ".cube"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->addComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/String;Z)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    .line 235
    invoke-static {v7, v12}, Lcom/adobe/premiereclip/dcx/DCXUtils;->setAppPropertiesForNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;Lorg/json/JSONObject;)V

    .line 236
    invoke-virtual {p0, v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->updateChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;
    :try_end_6
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 239
    :catch_0
    move-exception v1

    .line 240
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;->printStackTrace()V

    goto/16 :goto_0

    .line 159
    :cond_7
    :try_start_7
    const-string/jumbo v3, ""

    goto/16 :goto_1

    .line 170
    :catch_1
    move-exception v1

    .line 171
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 180
    :cond_8
    const-string/jumbo v3, "library"

    .line 182
    invoke-static/range {p3 .. p3}, Lorg/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v10, v2

    move-object v11, v3

    move-object v6, v4

    move-object/from16 v8, p3

    goto/16 :goto_2

    .line 196
    :catch_2
    move-exception v1

    .line 197
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_4

    .line 203
    :cond_9
    const-string/jumbo v1, ""

    goto/16 :goto_5

    .line 213
    :catch_3
    move-exception v1

    .line 214
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    .line 224
    :cond_a
    :try_start_8
    const-string/jumbo v1, "libraryId"

    move-object/from16 v0, p4

    invoke-virtual {v12, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_8 .. :try_end_8} :catch_0

    :goto_7
    move-object v8, p2

    .line 230
    goto :goto_6

    .line 227
    :catch_4
    move-exception v1

    .line 228
    :try_start_9
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_9
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_7

    :cond_b
    move-object v2, v1

    goto/16 :goto_3
.end method

.method public static setOverlayPreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 1635
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXPreferencesManager;->getInstance()Lcom/adobe/premiereclip/dcx/DCXPreferencesManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/adobe/premiereclip/dcx/DCXPreferencesManager;->setupPreferences(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    .line 1636
    if-nez v0, :cond_1

    .line 1638
    invoke-static {}, Lcom/adobe/sync/database/PreferenceCompositeLoader;->getInstance()Lcom/adobe/sync/database/PreferenceCompositeLoader;

    move-result-object v0

    const-string/jumbo v1, "preferences"

    invoke-virtual {v0, v1, v2, v2}, Lcom/adobe/sync/database/PreferenceCompositeLoader;->loadComposite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    .line 1639
    if-nez v0, :cond_1

    .line 1640
    const-string/jumbo v0, "DCXWriter"

    const-string/jumbo v1, "Error: Not able to create/find composite to load for preferences"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v1, v0

    .line 1644
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v3

    .line 1646
    invoke-static {v3, p0, p1, p2}, Lcom/adobe/premiereclip/dcx/DCXWriter;->getBrandingMediaReference(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v4

    .line 1647
    const-string/jumbo v0, "/branding/overlay"

    invoke-virtual {v3, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getChildWithAbsolutePath(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v5

    .line 1648
    if-eqz p0, :cond_2

    .line 1649
    if-eqz v5, :cond_0

    if-eqz v4, :cond_0

    .line 1650
    invoke-static {v5}, Lcom/adobe/premiereclip/dcx/DCXUtils;->appPropertiesFromNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageCopyUtils;->deepMutableCopyOfDictionary(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1651
    if-nez v0, :cond_4

    .line 1652
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object v2, v0

    .line 1655
    :goto_1
    :try_start_0
    const-string/jumbo v0, "mediaRef"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "/media/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getNodeId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1660
    :goto_2
    invoke-virtual {v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getMutableCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v0

    .line 1661
    invoke-static {v0, v2}, Lcom/adobe/premiereclip/dcx/DCXUtils;->setAppPropertiesForNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;Lorg/json/JSONObject;)V

    .line 1663
    :try_start_1
    invoke-virtual {v3, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->updateChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;
    :try_end_1
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1668
    :goto_3
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/dcx/DCXModelController;->pushProjectToServer(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V

    goto :goto_0

    .line 1657
    :catch_0
    move-exception v0

    .line 1658
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 1665
    :catch_1
    move-exception v0

    .line 1666
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;->printStackTrace()V

    goto :goto_3

    .line 1672
    :cond_2
    if-eqz v5, :cond_0

    .line 1674
    const-string/jumbo v0, "apc#properties"

    invoke-virtual {v5, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 1675
    if-eqz v0, :cond_3

    .line 1676
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1678
    :try_start_2
    const-string/jumbo v0, "state"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1682
    :goto_4
    invoke-virtual {v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getMutableCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v0

    .line 1683
    invoke-static {v0, v2}, Lcom/adobe/premiereclip/dcx/DCXUtils;->setAppPropertiesForNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;Lorg/json/JSONObject;)V

    .line 1685
    :try_start_3
    invoke-virtual {v3, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->updateChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;
    :try_end_3
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1691
    :cond_3
    :goto_5
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/dcx/DCXModelController;->pushProjectToServer(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V

    goto/16 :goto_0

    .line 1679
    :catch_2
    move-exception v0

    .line 1680
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4

    .line 1686
    :catch_3
    move-exception v0

    .line 1687
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;->printStackTrace()V

    goto :goto_5

    :cond_4
    move-object v2, v0

    goto :goto_1
.end method

.method public static setPhotoMotion(Z)V
    .locals 2

    .prologue
    .line 316
    sget-object v0, Lcom/adobe/premiereclip/dcx/DCXWriter;->currentComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    if-eqz v0, :cond_0

    .line 317
    sget-object v0, Lcom/adobe/premiereclip/dcx/DCXWriter;->currentComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    const-string/jumbo v1, "photoMotion"

    invoke-static {v0, p0, v1}, Lcom/adobe/premiereclip/dcx/DCXWriter;->setBooleanPropertySequence(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;ZLjava/lang/String;)V

    .line 318
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXWriter;->commitToDCX()V

    .line 320
    :cond_0
    return-void
.end method

.method public static setPreferenceBrandingState(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1523
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXPreferencesManager;->getInstance()Lcom/adobe/premiereclip/dcx/DCXPreferencesManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/adobe/premiereclip/dcx/DCXPreferencesManager;->setupPreferences(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    .line 1524
    if-nez v0, :cond_1

    .line 1526
    invoke-static {}, Lcom/adobe/sync/database/PreferenceCompositeLoader;->getInstance()Lcom/adobe/sync/database/PreferenceCompositeLoader;

    move-result-object v0

    const-string/jumbo v1, "preferences"

    invoke-virtual {v0, v1, v2, v2}, Lcom/adobe/sync/database/PreferenceCompositeLoader;->loadComposite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    .line 1527
    if-nez v0, :cond_1

    .line 1528
    const-string/jumbo v0, "DCXWriter"

    const-string/jumbo v1, "Error: Not able to create/find composite to load for preferences"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    :cond_0
    :goto_0
    return-void

    .line 1532
    :cond_1
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1533
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getChildWithAbsolutePath(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v1

    .line 1534
    if-eqz v1, :cond_0

    .line 1535
    invoke-static {v1, p1}, Lcom/adobe/premiereclip/dcx/DCXUtils;->setStateForPreferences(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Z)Lorg/json/JSONObject;

    move-result-object v2

    .line 1536
    if-eqz v2, :cond_0

    .line 1537
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getMutableCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v1

    .line 1538
    invoke-static {v1, v2}, Lcom/adobe/premiereclip/dcx/DCXUtils;->setAppPropertiesForNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;Lorg/json/JSONObject;)V

    .line 1541
    :try_start_0
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->updateChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1546
    :goto_1
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->pushProjectToServer(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V

    goto :goto_0

    .line 1543
    :catch_0
    move-exception v1

    .line 1544
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;->printStackTrace()V

    goto :goto_1
.end method

.method private static setPreferenceKey(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1421
    invoke-static {}, Lcom/adobe/sync/database/CompositeLoader;->getInstance()Lcom/adobe/sync/database/CompositeLoader;

    move-result-object v0

    invoke-virtual {v0, p0, v1, v1}, Lcom/adobe/sync/database/CompositeLoader;->loadComposite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    .line 1422
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getSequenceNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v1

    .line 1423
    invoke-static {v1, p1, p2}, Lcom/adobe/premiereclip/dcx/DCXUtils;->setPreferencesKeyInSequence(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v2

    .line 1424
    if-eqz v2, :cond_0

    .line 1425
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getMutableCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v1

    .line 1426
    invoke-static {v1, v2}, Lcom/adobe/premiereclip/dcx/DCXUtils;->setAppPropertiesForNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;Lorg/json/JSONObject;)V

    .line 1427
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/dcx/DCXUtils;->updateModificationTimeForNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)V

    .line 1429
    :cond_0
    return-void
.end method

.method public static setProjectPoster(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1010
    if-nez p0, :cond_0

    .line 1011
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v0

    sget-object v1, Lcom/adobe/premiereclip/dcx/DCXWriter;->currentComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/dcx/DCXModelController;->removePosterInModel(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V

    .line 1016
    :goto_0
    return-void

    .line 1014
    :cond_0
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v0

    sget-object v1, Lcom/adobe/premiereclip/dcx/DCXWriter;->currentComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0, v1, p0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->updatePosterInModel(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static setPropertySequence(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 257
    if-nez p0, :cond_1

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    invoke-static {p0}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getSequenceNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    .line 263
    if-eqz v0, :cond_0

    .line 264
    invoke-static {p0, v0}, Lcom/adobe/premiereclip/dcx/DCXWriter;->updateModificationTimeForNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)V

    .line 266
    sget-object v0, Lcom/adobe/premiereclip/dcx/DCXWriter;->currentComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getSequenceNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    .line 267
    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXUtils;->appPropertiesFromNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageCopyUtils;->deepMutableCopyOfDictionary(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    .line 268
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getMutableCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v0

    .line 270
    :try_start_0
    invoke-virtual {v1, p2, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 275
    :goto_1
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/dcx/DCXUtils;->setAppPropertiesForNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;Lorg/json/JSONObject;)V

    .line 277
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->updateChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;
    :try_end_1
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 279
    :catch_0
    move-exception v0

    .line 280
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;->printStackTrace()V

    goto :goto_0

    .line 272
    :catch_1
    move-exception v2

    .line 273
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public static setVideoBumperState(ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 1507
    if-eqz p0, :cond_0

    .line 1508
    invoke-static {p1}, Lcom/adobe/premiereclip/dcx/DCXWriter;->copyBumperPreferenceToProject(Ljava/lang/String;)V

    .line 1512
    :goto_0
    return-void

    .line 1510
    :cond_0
    invoke-static {p1}, Lcom/adobe/premiereclip/dcx/DCXWriter;->resetProjectBumper(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static updateAudioTrack(Lcom/adobe/premiereclip/project/sequence/Sequence;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1185
    sget-object v0, Lcom/adobe/premiereclip/dcx/DCXWriter;->currentComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    if-eqz v0, :cond_1

    .line 1186
    sget-object v0, Lcom/adobe/premiereclip/dcx/DCXWriter;->currentComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v1

    .line 1188
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getAudioDuckApplied()Z

    move-result v0

    const-string/jumbo v2, "autoDuck"

    invoke-static {v1, v0, v2}, Lcom/adobe/premiereclip/dcx/DCXWriter;->setBooleanPropertySequence(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;ZLjava/lang/String;)V

    .line 1189
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getSnapToBeatApplied()Z

    move-result v0

    const-string/jumbo v2, "snaptoBeat"

    invoke-static {v1, v0, v2}, Lcom/adobe/premiereclip/dcx/DCXWriter;->setBooleanPropertySequence(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;ZLjava/lang/String;)V

    .line 1190
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getAudioSyncPace()F

    move-result v0

    const-string/jumbo v2, "syncPace"

    invoke-static {v1, v0, v2}, Lcom/adobe/premiereclip/dcx/DCXWriter;->setFloatPropertySequence(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;FLjava/lang/String;)V

    .line 1191
    invoke-static {v1}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getAudioClipNodes(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1192
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 1193
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    .line 1194
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getMutableCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v2

    .line 1195
    invoke-static {v2}, Lcom/adobe/premiereclip/dcx/DCXUtils;->appPropertiesFromNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageCopyUtils;->deepMutableCopyOfDictionary(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1196
    invoke-static {p0}, Lcom/adobe/premiereclip/dcx/DCXWriter;->getSequenceAudioComponents(Lcom/adobe/premiereclip/project/sequence/Sequence;)Lorg/json/JSONArray;

    move-result-object v0

    .line 1198
    :try_start_0
    const-string/jumbo v4, "audioComponents"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1206
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getAudioTrackGroup()Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;->getAudioTrack()Lcom/adobe/premiereclip/project/sequence/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->getNumClips()I

    move-result v0

    if-lez v0, :cond_0

    .line 1207
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getAudioTrackGroup()Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;->getAudioTrack()Lcom/adobe/premiereclip/project/sequence/AudioTrack;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->getClipAtIndex(I)Lcom/adobe/premiereclip/project/sequence/Clip;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/AudioClip;

    .line 1209
    :try_start_1
    invoke-static {v3, v0}, Lcom/adobe/premiereclip/dcx/DCXWriter;->setClipContentIn(Lorg/json/JSONObject;Lcom/adobe/premiereclip/project/sequence/Clip;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1217
    :cond_0
    :goto_0
    invoke-static {v2, v3}, Lcom/adobe/premiereclip/dcx/DCXUtils;->setAppPropertiesForNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;Lorg/json/JSONObject;)V

    .line 1219
    :try_start_2
    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->updateChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;
    :try_end_2
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1224
    :goto_1
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXWriter;->commitToDCX()V

    .line 1229
    :cond_1
    :goto_2
    return-void

    .line 1201
    :catch_0
    move-exception v0

    .line 1202
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 1211
    :catch_1
    move-exception v0

    .line 1212
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 1221
    :catch_2
    move-exception v0

    .line 1222
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;->printStackTrace()V

    goto :goto_1
.end method

.method public static updateClip(Lcom/adobe/premiereclip/project/sequence/Clip;)V
    .locals 1

    .prologue
    .line 994
    sget-object v0, Lcom/adobe/premiereclip/dcx/DCXWriter;->currentComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    if-eqz v0, :cond_0

    .line 995
    invoke-static {p0}, Lcom/adobe/premiereclip/dcx/DCXWriter;->updateClipValues(Lcom/adobe/premiereclip/project/sequence/Clip;)V

    .line 996
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXWriter;->commitToDCX()V

    .line 998
    :cond_0
    return-void
.end method

.method private static updateClipValues(Lcom/adobe/premiereclip/project/sequence/Clip;)V
    .locals 16

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v11, 0x0

    .line 849
    sget-object v4, Lcom/adobe/premiereclip/dcx/DCXWriter;->currentComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getChildWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v4

    .line 850
    if-eqz v4, :cond_9

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getMutableCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v2

    move-object v12, v2

    .line 851
    :goto_0
    if-eqz v12, :cond_8

    .line 852
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipType()Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    move-result-object v2

    sget-object v4, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->IMAGE_TITLE:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    if-ne v2, v4, :cond_a

    move v2, v3

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 857
    invoke-static {v12}, Lcom/adobe/premiereclip/dcx/DCXUtils;->appPropertiesFromNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageCopyUtils;->deepMutableCopyOfDictionary(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v5

    .line 861
    :try_start_0
    move-object/from16 v0, p0

    invoke-static {v5, v0}, Lcom/adobe/premiereclip/dcx/DCXWriter;->setClipContentIn(Lorg/json/JSONObject;Lcom/adobe/premiereclip/project/sequence/Clip;)V

    .line 862
    move-object/from16 v0, p0

    invoke-static {v5, v0}, Lcom/adobe/premiereclip/dcx/DCXWriter;->setClipDuration(Lorg/json/JSONObject;Lcom/adobe/premiereclip/project/sequence/Clip;)V

    .line 864
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 865
    const-string/jumbo v4, "backgroundColor"

    move-object/from16 v0, p0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/ImageClip;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/ImageClip;->getBackgroundColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adobe/premiereclip/util/Utilities;->hexStringToRgbaString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v4, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 866
    const-string/jumbo v4, "titleColor"

    move-object/from16 v0, p0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/ImageClip;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/ImageClip;->getTextColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adobe/premiereclip/util/Utilities;->hexStringToRgbaString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v4, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 867
    const-string/jumbo v4, "title"

    move-object/from16 v0, p0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/ImageClip;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/ImageClip;->getTitleText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v4, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 869
    :cond_0
    move-object/from16 v0, p0

    instance-of v2, v0, Lcom/adobe/premiereclip/project/sequence/ImageClip;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/ImageClip;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/ImageClip;->isStoryCard()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 870
    const-string/jumbo v4, "title"

    move-object/from16 v0, p0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/ImageClip;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/ImageClip;->getStoryCardText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v4, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 871
    const-string/jumbo v2, "isStoryCard"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v5, v2, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 872
    const-string/jumbo v2, "isTitleClip"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 875
    :cond_1
    move-object/from16 v0, p0

    instance-of v2, v0, Lcom/adobe/premiereclip/project/sequence/ImageClip;

    if-eqz v2, :cond_15

    .line 876
    const-string/jumbo v2, "isStoryCard"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_b

    move v4, v11

    .line 882
    :goto_2
    :try_start_1
    move-object/from16 v0, p0

    instance-of v2, v0, Lcom/adobe/premiereclip/project/sequence/VideoClip;

    if-eqz v2, :cond_2

    .line 883
    const-string/jumbo v2, "isStoryCard"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    move v4, v11

    .line 890
    :cond_2
    :goto_3
    if-eqz v4, :cond_3

    .line 891
    const-string/jumbo v2, "isStoryCard"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 892
    const-string/jumbo v2, "title"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 893
    const-string/jumbo v2, "isTitleClip"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 896
    :cond_3
    invoke-static/range {p0 .. p0}, Lcom/adobe/premiereclip/dcx/DCXWriter;->getClipVideoComponents(Lcom/adobe/premiereclip/project/sequence/Clip;)Lorg/json/JSONArray;

    move-result-object v2

    .line 897
    const-string/jumbo v7, "videoComponents"

    invoke-virtual {v5, v7, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 899
    invoke-static/range {p0 .. p0}, Lcom/adobe/premiereclip/dcx/DCXWriter;->getClipAudioComponents(Lcom/adobe/premiereclip/project/sequence/Clip;)Lorg/json/JSONArray;

    move-result-object v2

    .line 900
    const-string/jumbo v7, "audioComponents"

    invoke-virtual {v5, v7, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 902
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipType()Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    move-result-object v2

    sget-object v7, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->VIDEO:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    if-ne v2, v7, :cond_4

    .line 903
    const-string/jumbo v2, "speed"

    invoke-virtual/range {p0 .. p0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getSpeed()F

    move-result v7

    float-to-double v8, v7

    invoke-virtual {v5, v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 906
    :cond_4
    invoke-static {v12, v5}, Lcom/adobe/premiereclip/dcx/DCXUtils;->setAppPropertiesForNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    .line 911
    :goto_4
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v9

    .line 912
    const-string/jumbo v2, "mediaRef"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 913
    sget-object v5, Lcom/adobe/premiereclip/dcx/DCXWriter;->currentComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getChildWithAbsolutePath(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getMutableCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v8

    .line 914
    invoke-static {v8}, Lcom/adobe/premiereclip/dcx/DCXUtils;->appPropertiesFromNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageCopyUtils;->deepMutableCopyOfDictionary(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v13

    .line 917
    invoke-virtual {v9}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getDurationUs()J

    move-result-wide v14

    invoke-static {v13, v14, v15}, Lcom/adobe/premiereclip/dcx/DCXWriter;->setAssetDurationAndTimeScale(Lorg/json/JSONObject;J)V

    .line 919
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz v4, :cond_7

    .line 920
    :cond_5
    const-string/jumbo v2, "assetURL"

    invoke-virtual {v9}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getOriginalAssetPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v2, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 921
    const-string/jumbo v2, "creationDate"

    invoke-virtual {v9}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getOriginalAssetDate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v2, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 922
    sget-object v2, Lcom/adobe/premiereclip/dcx/DCXWriter;->currentComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getComponentsOf(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Ljava/util/List;

    move-result-object v5

    .line 923
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e

    const/4 v2, 0x0

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getAssetId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 925
    const/4 v2, 0x0

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    .line 927
    if-eqz v4, :cond_14

    .line 928
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getMutableCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;

    move-result-object v3

    .line 929
    const-string/jumbo v2, "isSynthetic"

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 930
    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v2

    .line 931
    invoke-virtual {v9}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getAssetPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 932
    invoke-virtual {v9}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getAssetPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/adobe/premiereclip/util/Utilities;->getMimeTypefromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 934
    const-string/jumbo v6, "Video"

    .line 935
    if-eqz v4, :cond_13

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_13

    .line 936
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v7, "."

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    .line 938
    :goto_5
    instance-of v2, v3, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;

    if-eqz v2, :cond_6

    .line 939
    const-string/jumbo v2, "DCXWriter"

    const-string/jumbo v7, "got mutable component"

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    :cond_6
    move-object v0, v3

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;

    move-object v2, v0

    invoke-virtual {v2, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;->setPath(Ljava/lang/String;)V

    .line 942
    move-object v0, v3

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;

    move-object v2, v0

    invoke-virtual {v2, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;->setType(Ljava/lang/String;)V

    .line 943
    move-object v0, v3

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;

    move-object v2, v0

    invoke-virtual {v2, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;->setName(Ljava/lang/String;)V

    .line 946
    :goto_6
    invoke-virtual {v9}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getOriginalAssetPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getOriginalAssetDate()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getUCIDForComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 947
    sget-object v4, Lcom/adobe/premiereclip/dcx/DCXWriter;->currentComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->updateComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    .line 948
    invoke-static {v8, v13}, Lcom/adobe/premiereclip/dcx/DCXUtils;->setAppPropertiesForNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;Lorg/json/JSONObject;)V

    .line 977
    :cond_7
    :goto_7
    sget-object v2, Lcom/adobe/premiereclip/dcx/DCXWriter;->currentComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->updateChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 983
    :goto_8
    :try_start_3
    sget-object v2, Lcom/adobe/premiereclip/dcx/DCXWriter;->currentComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->updateChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    .line 984
    if-eqz v11, :cond_8

    .line 985
    sget-object v2, Lcom/adobe/premiereclip/dcx/DCXWriter;->currentComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v2

    invoke-static {v2}, Lcom/adobe/premiereclip/dcx/DCXUtils;->removeUnusedMediaRefNodes(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;)V
    :try_end_3
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_3 .. :try_end_3} :catch_2

    .line 991
    :cond_8
    :goto_9
    return-void

    :cond_9
    move-object v12, v2

    .line 850
    goto/16 :goto_0

    :cond_a
    move v2, v11

    .line 852
    goto/16 :goto_1

    .line 879
    :cond_b
    :try_start_4
    const-string/jumbo v2, "isStoryCard"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/ImageClip;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/ImageClip;->isStoryCard()Z
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    move-result v2

    if-nez v2, :cond_c

    move v2, v3

    :goto_a
    move v4, v2

    goto/16 :goto_2

    :cond_c
    move v2, v11

    goto :goto_a

    .line 886
    :cond_d
    :try_start_5
    const-string/jumbo v2, "isStoryCard"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_3

    move-result v4

    goto/16 :goto_3

    .line 907
    :catch_0
    move-exception v2

    move v4, v11

    .line 908
    :goto_b
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_4

    .line 949
    :cond_e
    :try_start_6
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f

    .line 951
    sget-object v2, Lcom/adobe/premiereclip/dcx/DCXWriter;->currentComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v2, v0}, Lcom/adobe/premiereclip/dcx/DCXWriter;->getMediaReference(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;Lcom/adobe/premiereclip/project/sequence/Clip;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getMutableCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v8

    .line 952
    invoke-static {v12}, Lcom/adobe/premiereclip/dcx/DCXUtils;->appPropertiesFromNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageCopyUtils;->deepMutableCopyOfDictionary(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    .line 953
    const-string/jumbo v4, "mediaRef"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "/media/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v8}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->getNodeId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 954
    invoke-static {v12, v2}, Lcom/adobe/premiereclip/dcx/DCXUtils;->setAppPropertiesForNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;Lorg/json/JSONObject;)V

    move v11, v3

    .line 956
    goto/16 :goto_7

    .line 958
    :cond_f
    invoke-virtual {v9}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getAssetId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-virtual {v9}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getAssetId()Ljava/lang/String;

    move-result-object v4

    .line 959
    :goto_c
    invoke-virtual {v9}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getAssetPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 960
    invoke-virtual {v9}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getAssetPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/adobe/premiereclip/util/Utilities;->getMimeTypefromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 962
    const-string/jumbo v3, "Video"

    .line 964
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 965
    const-string/jumbo v3, "Title Image"

    .line 968
    :cond_10
    if-eqz v2, :cond_12

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_12

    .line 969
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 971
    :goto_d
    invoke-virtual {v9}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getOriginalAssetPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getOriginalAssetDate()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getUCIDForComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 972
    sget-object v2, Lcom/adobe/premiereclip/dcx/DCXWriter;->currentComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v2

    const-string/jumbo v6, "primary"

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->addComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    .line 974
    invoke-static {v8, v13}, Lcom/adobe/premiereclip/dcx/DCXUtils;->setAppPropertiesForNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;Lorg/json/JSONObject;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_7

    .line 978
    :catch_1
    move-exception v2

    .line 979
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_8

    .line 958
    :cond_11
    :try_start_7
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    move-result-object v4

    goto :goto_c

    .line 987
    :catch_2
    move-exception v2

    .line 988
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;->printStackTrace()V

    goto/16 :goto_9

    .line 907
    :catch_3
    move-exception v2

    goto/16 :goto_b

    :cond_12
    move-object v7, v4

    goto :goto_d

    :cond_13
    move-object v4, v2

    goto/16 :goto_5

    :cond_14
    move-object v3, v2

    goto/16 :goto_6

    :cond_15
    move v4, v11

    goto/16 :goto_2
.end method

.method public static updateClips(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/project/sequence/Clip;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1001
    sget-object v0, Lcom/adobe/premiereclip/dcx/DCXWriter;->currentComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    if-eqz v0, :cond_1

    .line 1002
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 1003
    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXWriter;->updateClipValues(Lcom/adobe/premiereclip/project/sequence/Clip;)V

    goto :goto_0

    .line 1005
    :cond_0
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXWriter;->commitToDCX()V

    .line 1007
    :cond_1
    return-void
.end method

.method private static updateModificationTimeForNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)V
    .locals 2

    .prologue
    .line 97
    invoke-static {p1}, Lcom/adobe/premiereclip/dcx/DCXUtils;->appPropertiesFromNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageCopyUtils;->deepMutableCopyOfDictionary(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 98
    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXUtils;->updateModificationTimeInDictionary(Lorg/json/JSONObject;)J

    .line 99
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getMutableCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v1

    .line 100
    invoke-static {v1, v0}, Lcom/adobe/premiereclip/dcx/DCXUtils;->setAppPropertiesForNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;Lorg/json/JSONObject;)V

    .line 102
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->updateChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 105
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;->printStackTrace()V

    goto :goto_0
.end method

.method private static updateSortableValue(Lcom/adobe/premiereclip/project/sequence/Clip;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 774
    sget-object v0, Lcom/adobe/premiereclip/dcx/DCXWriter;->currentComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    if-eqz v0, :cond_0

    .line 775
    sget-object v0, Lcom/adobe/premiereclip/dcx/DCXWriter;->currentComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getChildWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getMutableCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v1

    .line 776
    if-eqz v1, :cond_0

    .line 777
    invoke-static {v1}, Lcom/adobe/premiereclip/dcx/DCXUtils;->appPropertiesFromNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageCopyUtils;->deepMutableCopyOfDictionary(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 779
    :try_start_0
    const-string/jumbo v2, "sortableValue"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 780
    invoke-static {v1, v0}, Lcom/adobe/premiereclip/dcx/DCXUtils;->setAppPropertiesForNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 787
    :goto_0
    :try_start_1
    sget-object v0, Lcom/adobe/premiereclip/dcx/DCXWriter;->currentComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->updateChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    .line 788
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXWriter;->commitToDCX()V
    :try_end_1
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_1 .. :try_end_1} :catch_1

    .line 796
    :cond_0
    :goto_1
    return-void

    .line 782
    :catch_0
    move-exception v0

    .line 783
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 790
    :catch_1
    move-exception v0

    .line 791
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;->printStackTrace()V

    goto :goto_1
.end method
