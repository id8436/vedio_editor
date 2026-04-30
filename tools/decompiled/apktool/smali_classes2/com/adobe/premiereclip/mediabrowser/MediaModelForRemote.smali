.class public Lcom/adobe/premiereclip/mediabrowser/MediaModelForRemote;
.super Lcom/adobe/premiereclip/mediabrowser/MediaModel;
.source "MediaModelForRemote.java"


# instance fields
.field private mThumbnailUrl:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IJJLcom/adobe/premiereclip/mediabrowser/Bucket;DDJLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 23
    invoke-direct/range {p0 .. p14}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;-><init>(Ljava/lang/String;Ljava/lang/String;IJJLcom/adobe/premiereclip/mediabrowser/Bucket;DDJ)V

    .line 24
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/MediaModelForRemote;->mTitle:Ljava/lang/String;

    .line 25
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/MediaModelForRemote;->mUrl:Ljava/lang/String;

    .line 26
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/MediaModelForRemote;->mThumbnailUrl:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IJJLcom/adobe/premiereclip/mediabrowser/Bucket;DDJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct/range {p0 .. p14}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;-><init>(Ljava/lang/String;Ljava/lang/String;IJJLcom/adobe/premiereclip/mediabrowser/Bucket;DDJ)V

    .line 31
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/MediaModelForRemote;->mTitle:Ljava/lang/String;

    .line 32
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/MediaModelForRemote;->mUrl:Ljava/lang/String;

    .line 33
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/MediaModelForRemote;->mThumbnailUrl:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public getThumbnailUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/MediaModelForRemote;->mThumbnailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/MediaModelForRemote;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/MediaModelForRemote;->mUrl:Ljava/lang/String;

    return-object v0
.end method
