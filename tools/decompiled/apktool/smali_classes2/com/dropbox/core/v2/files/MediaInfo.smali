.class public final Lcom/dropbox/core/v2/files/MediaInfo;
.super Ljava/lang/Object;
.source "MediaInfo.java"


# static fields
.field public static final PENDING:Lcom/dropbox/core/v2/files/MediaInfo;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/files/MediaInfo$Tag;

.field private metadataValue:Lcom/dropbox/core/v2/files/MediaMetadata;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Lcom/dropbox/core/v2/files/MediaInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/MediaInfo;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/MediaInfo$Tag;->PENDING:Lcom/dropbox/core/v2/files/MediaInfo$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/MediaInfo;->withTag(Lcom/dropbox/core/v2/files/MediaInfo$Tag;)Lcom/dropbox/core/v2/files/MediaInfo;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/MediaInfo;->PENDING:Lcom/dropbox/core/v2/files/MediaInfo;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/files/MediaInfo;)Lcom/dropbox/core/v2/files/MediaMetadata;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/core/v2/files/MediaInfo;->metadataValue:Lcom/dropbox/core/v2/files/MediaMetadata;

    return-object v0
.end method

.method public static metadata(Lcom/dropbox/core/v2/files/MediaMetadata;)Lcom/dropbox/core/v2/files/MediaInfo;
    .locals 2

    .prologue
    .line 135
    if-nez p0, :cond_0

    .line 136
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/files/MediaInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/MediaInfo;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/MediaInfo$Tag;->METADATA:Lcom/dropbox/core/v2/files/MediaInfo$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/MediaInfo;->withTagAndMetadata(Lcom/dropbox/core/v2/files/MediaInfo$Tag;Lcom/dropbox/core/v2/files/MediaMetadata;)Lcom/dropbox/core/v2/files/MediaInfo;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/files/MediaInfo$Tag;)Lcom/dropbox/core/v2/files/MediaInfo;
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/dropbox/core/v2/files/MediaInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/MediaInfo;-><init>()V

    .line 64
    iput-object p1, v0, Lcom/dropbox/core/v2/files/MediaInfo;->_tag:Lcom/dropbox/core/v2/files/MediaInfo$Tag;

    .line 65
    return-object v0
.end method

.method private withTagAndMetadata(Lcom/dropbox/core/v2/files/MediaInfo$Tag;Lcom/dropbox/core/v2/files/MediaMetadata;)Lcom/dropbox/core/v2/files/MediaInfo;
    .locals 1

    .prologue
    .line 78
    new-instance v0, Lcom/dropbox/core/v2/files/MediaInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/MediaInfo;-><init>()V

    .line 79
    iput-object p1, v0, Lcom/dropbox/core/v2/files/MediaInfo;->_tag:Lcom/dropbox/core/v2/files/MediaInfo$Tag;

    .line 80
    iput-object p2, v0, Lcom/dropbox/core/v2/files/MediaInfo;->metadataValue:Lcom/dropbox/core/v2/files/MediaMetadata;

    .line 81
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 169
    if-ne p1, p0, :cond_1

    move v0, v1

    .line 190
    :cond_0
    :goto_0
    return v0

    .line 172
    :cond_1
    if-eqz p1, :cond_0

    .line 175
    instance-of v2, p1, Lcom/dropbox/core/v2/files/MediaInfo;

    if-eqz v2, :cond_0

    .line 176
    check-cast p1, Lcom/dropbox/core/v2/files/MediaInfo;

    .line 177
    iget-object v2, p0, Lcom/dropbox/core/v2/files/MediaInfo;->_tag:Lcom/dropbox/core/v2/files/MediaInfo$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/MediaInfo;->_tag:Lcom/dropbox/core/v2/files/MediaInfo$Tag;

    if-ne v2, v3, :cond_0

    .line 180
    sget-object v2, Lcom/dropbox/core/v2/files/MediaInfo$1;->$SwitchMap$com$dropbox$core$v2$files$MediaInfo$Tag:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/files/MediaInfo;->_tag:Lcom/dropbox/core/v2/files/MediaInfo$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/files/MediaInfo$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v0, v1

    .line 182
    goto :goto_0

    .line 184
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/files/MediaInfo;->metadataValue:Lcom/dropbox/core/v2/files/MediaMetadata;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/MediaInfo;->metadataValue:Lcom/dropbox/core/v2/files/MediaMetadata;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/files/MediaInfo;->metadataValue:Lcom/dropbox/core/v2/files/MediaMetadata;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/MediaInfo;->metadataValue:Lcom/dropbox/core/v2/files/MediaMetadata;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/files/MediaMetadata;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 180
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getMetadataValue()Lcom/dropbox/core/v2/files/MediaMetadata;
    .locals 3

    .prologue
    .line 152
    iget-object v0, p0, Lcom/dropbox/core/v2/files/MediaInfo;->_tag:Lcom/dropbox/core/v2/files/MediaInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/MediaInfo$Tag;->METADATA:Lcom/dropbox/core/v2/files/MediaInfo$Tag;

    if-eq v0, v1, :cond_0

    .line 153
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.METADATA, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/MediaInfo;->_tag:Lcom/dropbox/core/v2/files/MediaInfo$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/MediaInfo$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/MediaInfo;->metadataValue:Lcom/dropbox/core/v2/files/MediaMetadata;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 160
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/files/MediaInfo;->_tag:Lcom/dropbox/core/v2/files/MediaInfo$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/MediaInfo;->metadataValue:Lcom/dropbox/core/v2/files/MediaMetadata;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 164
    return v0
.end method

.method public isMetadata()Z
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/dropbox/core/v2/files/MediaInfo;->_tag:Lcom/dropbox/core/v2/files/MediaInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/MediaInfo$Tag;->METADATA:Lcom/dropbox/core/v2/files/MediaInfo$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPending()Z
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/dropbox/core/v2/files/MediaInfo;->_tag:Lcom/dropbox/core/v2/files/MediaInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/MediaInfo$Tag;->PENDING:Lcom/dropbox/core/v2/files/MediaInfo$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/files/MediaInfo$Tag;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/dropbox/core/v2/files/MediaInfo;->_tag:Lcom/dropbox/core/v2/files/MediaInfo$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 196
    sget-object v0, Lcom/dropbox/core/v2/files/MediaInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/MediaInfo$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/MediaInfo$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 208
    sget-object v0, Lcom/dropbox/core/v2/files/MediaInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/MediaInfo$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/MediaInfo$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
