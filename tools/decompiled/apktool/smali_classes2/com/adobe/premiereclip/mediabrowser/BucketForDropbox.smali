.class public Lcom/adobe/premiereclip/mediabrowser/BucketForDropbox;
.super Lcom/adobe/premiereclip/mediabrowser/Bucket;
.source "BucketForDropbox.java"


# instance fields
.field private mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Lcom/adobe/premiereclip/mediabrowser/Bucket;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iput-object p3, p0, Lcom/adobe/premiereclip/mediabrowser/BucketForDropbox;->mPath:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/BucketForDropbox;->mPath:Ljava/lang/String;

    return-object v0
.end method
