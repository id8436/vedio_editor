.class public Lcom/dropbox/core/v2/sharing/CollectionLinkMetadata;
.super Lcom/dropbox/core/v2/sharing/LinkMetadata;
.source "CollectionLinkMetadata.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/Visibility;)V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/core/v2/sharing/CollectionLinkMetadata;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/Visibility;Ljava/util/Date;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/Visibility;Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/dropbox/core/v2/sharing/LinkMetadata;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/Visibility;Ljava/util/Date;)V

    .line 39
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 91
    if-ne p1, p0, :cond_1

    .line 106
    :cond_0
    :goto_0
    return v0

    .line 94
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 95
    goto :goto_0

    .line 98
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 99
    check-cast p1, Lcom/dropbox/core/v2/sharing/CollectionLinkMetadata;

    .line 100
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/CollectionLinkMetadata;->url:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/CollectionLinkMetadata;->url:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/CollectionLinkMetadata;->url:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/CollectionLinkMetadata;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/CollectionLinkMetadata;->visibility:Lcom/dropbox/core/v2/sharing/Visibility;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/CollectionLinkMetadata;->visibility:Lcom/dropbox/core/v2/sharing/Visibility;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/CollectionLinkMetadata;->visibility:Lcom/dropbox/core/v2/sharing/Visibility;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/CollectionLinkMetadata;->visibility:Lcom/dropbox/core/v2/sharing/Visibility;

    .line 101
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/Visibility;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/CollectionLinkMetadata;->expires:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/CollectionLinkMetadata;->expires:Ljava/util/Date;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/CollectionLinkMetadata;->expires:Ljava/util/Date;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/CollectionLinkMetadata;->expires:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/CollectionLinkMetadata;->expires:Ljava/util/Date;

    .line 102
    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v1

    .line 106
    goto :goto_0
.end method

.method public getExpires()Ljava/util/Date;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/CollectionLinkMetadata;->expires:Ljava/util/Date;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/CollectionLinkMetadata;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVisibility()Lcom/dropbox/core/v2/sharing/Visibility;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/CollectionLinkMetadata;->visibility:Lcom/dropbox/core/v2/sharing/Visibility;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 112
    sget-object v0, Lcom/dropbox/core/v2/sharing/CollectionLinkMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/CollectionLinkMetadata$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/CollectionLinkMetadata$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 124
    sget-object v0, Lcom/dropbox/core/v2/sharing/CollectionLinkMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/CollectionLinkMetadata$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/CollectionLinkMetadata$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
