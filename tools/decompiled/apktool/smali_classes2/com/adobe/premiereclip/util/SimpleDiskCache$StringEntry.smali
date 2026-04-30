.class public Lcom/adobe/premiereclip/util/SimpleDiskCache$StringEntry;
.super Ljava/lang/Object;
.source "SimpleDiskCache.java"


# instance fields
.field private final metadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation
.end field

.field private final string:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    iput-object p1, p0, Lcom/adobe/premiereclip/util/SimpleDiskCache$StringEntry;->string:Ljava/lang/String;

    .line 360
    iput-object p2, p0, Lcom/adobe/premiereclip/util/SimpleDiskCache$StringEntry;->metadata:Ljava/util/Map;

    .line 361
    return-void
.end method


# virtual methods
.method public getMetadata()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 368
    iget-object v0, p0, Lcom/adobe/premiereclip/util/SimpleDiskCache$StringEntry;->metadata:Ljava/util/Map;

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/adobe/premiereclip/util/SimpleDiskCache$StringEntry;->string:Ljava/lang/String;

    return-object v0
.end method
