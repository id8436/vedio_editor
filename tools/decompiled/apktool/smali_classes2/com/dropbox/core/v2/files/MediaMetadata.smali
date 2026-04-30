.class public Lcom/dropbox/core/v2/files/MediaMetadata;
.super Ljava/lang/Object;
.source "MediaMetadata.java"


# instance fields
.field protected final dimensions:Lcom/dropbox/core/v2/files/Dimensions;

.field protected final location:Lcom/dropbox/core/v2/files/GpsCoordinates;

.field protected final timeTaken:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, v0, v0, v0}, Lcom/dropbox/core/v2/files/MediaMetadata;-><init>(Lcom/dropbox/core/v2/files/Dimensions;Lcom/dropbox/core/v2/files/GpsCoordinates;Ljava/util/Date;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/files/Dimensions;Lcom/dropbox/core/v2/files/GpsCoordinates;Ljava/util/Date;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/dropbox/core/v2/files/MediaMetadata;->dimensions:Lcom/dropbox/core/v2/files/Dimensions;

    .line 42
    iput-object p2, p0, Lcom/dropbox/core/v2/files/MediaMetadata;->location:Lcom/dropbox/core/v2/files/GpsCoordinates;

    .line 43
    invoke-static {p3}, Lcom/dropbox/core/util/LangUtil;->truncateMillis(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/core/v2/files/MediaMetadata;->timeTaken:Ljava/util/Date;

    .line 44
    return-void
.end method

.method public static newBuilder()Lcom/dropbox/core/v2/files/MediaMetadata$Builder;
    .locals 1

    .prologue
    .line 88
    new-instance v0, Lcom/dropbox/core/v2/files/MediaMetadata$Builder;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/MediaMetadata$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 165
    if-ne p1, p0, :cond_1

    .line 180
    :cond_0
    :goto_0
    return v0

    .line 168
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 169
    goto :goto_0

    .line 172
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 173
    check-cast p1, Lcom/dropbox/core/v2/files/MediaMetadata;

    .line 174
    iget-object v2, p0, Lcom/dropbox/core/v2/files/MediaMetadata;->dimensions:Lcom/dropbox/core/v2/files/Dimensions;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/MediaMetadata;->dimensions:Lcom/dropbox/core/v2/files/Dimensions;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/files/MediaMetadata;->dimensions:Lcom/dropbox/core/v2/files/Dimensions;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/files/MediaMetadata;->dimensions:Lcom/dropbox/core/v2/files/Dimensions;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/MediaMetadata;->dimensions:Lcom/dropbox/core/v2/files/Dimensions;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/files/Dimensions;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/files/MediaMetadata;->location:Lcom/dropbox/core/v2/files/GpsCoordinates;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/MediaMetadata;->location:Lcom/dropbox/core/v2/files/GpsCoordinates;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/files/MediaMetadata;->location:Lcom/dropbox/core/v2/files/GpsCoordinates;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/files/MediaMetadata;->location:Lcom/dropbox/core/v2/files/GpsCoordinates;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/MediaMetadata;->location:Lcom/dropbox/core/v2/files/GpsCoordinates;

    .line 175
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/files/GpsCoordinates;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/files/MediaMetadata;->timeTaken:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/MediaMetadata;->timeTaken:Ljava/util/Date;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/files/MediaMetadata;->timeTaken:Ljava/util/Date;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/files/MediaMetadata;->timeTaken:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/MediaMetadata;->timeTaken:Ljava/util/Date;

    .line 176
    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v1

    .line 180
    goto :goto_0
.end method

.method public getDimensions()Lcom/dropbox/core/v2/files/Dimensions;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/dropbox/core/v2/files/MediaMetadata;->dimensions:Lcom/dropbox/core/v2/files/Dimensions;

    return-object v0
.end method

.method public getLocation()Lcom/dropbox/core/v2/files/GpsCoordinates;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/dropbox/core/v2/files/MediaMetadata;->location:Lcom/dropbox/core/v2/files/GpsCoordinates;

    return-object v0
.end method

.method public getTimeTaken()Ljava/util/Date;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/dropbox/core/v2/files/MediaMetadata;->timeTaken:Ljava/util/Date;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 155
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/files/MediaMetadata;->dimensions:Lcom/dropbox/core/v2/files/Dimensions;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/MediaMetadata;->location:Lcom/dropbox/core/v2/files/GpsCoordinates;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/files/MediaMetadata;->timeTaken:Ljava/util/Date;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 160
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 186
    sget-object v0, Lcom/dropbox/core/v2/files/MediaMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/MediaMetadata$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/MediaMetadata$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 198
    sget-object v0, Lcom/dropbox/core/v2/files/MediaMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/MediaMetadata$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/MediaMetadata$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
