.class public Lcom/adobe/premiereclip/music/SongCollection;
.super Ljava/lang/Object;
.source "SongCollection.java"


# instance fields
.field private collectionId:Ljava/lang/String;

.field private collectionName:Ljava/lang/String;

.field private songCount:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p3, p0, Lcom/adobe/premiereclip/music/SongCollection;->songCount:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/adobe/premiereclip/music/SongCollection;->collectionName:Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/adobe/premiereclip/music/SongCollection;->collectionId:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public getCollectionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/adobe/premiereclip/music/SongCollection;->collectionId:Ljava/lang/String;

    return-object v0
.end method

.method public getCollectionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/adobe/premiereclip/music/SongCollection;->collectionName:Ljava/lang/String;

    return-object v0
.end method

.method public getSongCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/adobe/premiereclip/music/SongCollection;->songCount:Ljava/lang/String;

    return-object v0
.end method

.method public setCollectionId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/adobe/premiereclip/music/SongCollection;->collectionId:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setCollectionName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/adobe/premiereclip/music/SongCollection;->collectionName:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setSongCount(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/adobe/premiereclip/music/SongCollection;->songCount:Ljava/lang/String;

    .line 41
    return-void
.end method
