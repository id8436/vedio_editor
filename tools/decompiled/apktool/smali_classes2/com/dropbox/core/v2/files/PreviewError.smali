.class public final Lcom/dropbox/core/v2/files/PreviewError;
.super Ljava/lang/Object;
.source "PreviewError.java"


# static fields
.field public static final IN_PROGRESS:Lcom/dropbox/core/v2/files/PreviewError;

.field public static final UNSUPPORTED_CONTENT:Lcom/dropbox/core/v2/files/PreviewError;

.field public static final UNSUPPORTED_EXTENSION:Lcom/dropbox/core/v2/files/PreviewError;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/files/PreviewError$Tag;

.field private pathValue:Lcom/dropbox/core/v2/files/LookupError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Lcom/dropbox/core/v2/files/PreviewError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/PreviewError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/PreviewError$Tag;->IN_PROGRESS:Lcom/dropbox/core/v2/files/PreviewError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/PreviewError;->withTag(Lcom/dropbox/core/v2/files/PreviewError$Tag;)Lcom/dropbox/core/v2/files/PreviewError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/PreviewError;->IN_PROGRESS:Lcom/dropbox/core/v2/files/PreviewError;

    .line 58
    new-instance v0, Lcom/dropbox/core/v2/files/PreviewError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/PreviewError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/PreviewError$Tag;->UNSUPPORTED_EXTENSION:Lcom/dropbox/core/v2/files/PreviewError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/PreviewError;->withTag(Lcom/dropbox/core/v2/files/PreviewError$Tag;)Lcom/dropbox/core/v2/files/PreviewError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/PreviewError;->UNSUPPORTED_EXTENSION:Lcom/dropbox/core/v2/files/PreviewError;

    .line 62
    new-instance v0, Lcom/dropbox/core/v2/files/PreviewError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/PreviewError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/PreviewError$Tag;->UNSUPPORTED_CONTENT:Lcom/dropbox/core/v2/files/PreviewError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/PreviewError;->withTag(Lcom/dropbox/core/v2/files/PreviewError$Tag;)Lcom/dropbox/core/v2/files/PreviewError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/PreviewError;->UNSUPPORTED_CONTENT:Lcom/dropbox/core/v2/files/PreviewError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/files/PreviewError;)Lcom/dropbox/core/v2/files/LookupError;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/core/v2/files/PreviewError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    return-object v0
.end method

.method public static path(Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/PreviewError;
    .locals 2

    .prologue
    .line 140
    if-nez p0, :cond_0

    .line 141
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/files/PreviewError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/PreviewError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/PreviewError$Tag;->PATH:Lcom/dropbox/core/v2/files/PreviewError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/PreviewError;->withTagAndPath(Lcom/dropbox/core/v2/files/PreviewError$Tag;Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/PreviewError;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/files/PreviewError$Tag;)Lcom/dropbox/core/v2/files/PreviewError;
    .locals 1

    .prologue
    .line 79
    new-instance v0, Lcom/dropbox/core/v2/files/PreviewError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/PreviewError;-><init>()V

    .line 80
    iput-object p1, v0, Lcom/dropbox/core/v2/files/PreviewError;->_tag:Lcom/dropbox/core/v2/files/PreviewError$Tag;

    .line 81
    return-object v0
.end method

.method private withTagAndPath(Lcom/dropbox/core/v2/files/PreviewError$Tag;Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/PreviewError;
    .locals 1

    .prologue
    .line 94
    new-instance v0, Lcom/dropbox/core/v2/files/PreviewError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/PreviewError;-><init>()V

    .line 95
    iput-object p1, v0, Lcom/dropbox/core/v2/files/PreviewError;->_tag:Lcom/dropbox/core/v2/files/PreviewError$Tag;

    .line 96
    iput-object p2, v0, Lcom/dropbox/core/v2/files/PreviewError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    .line 97
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 207
    if-ne p1, p0, :cond_1

    move v0, v1

    .line 232
    :cond_0
    :goto_0
    return v0

    .line 210
    :cond_1
    if-eqz p1, :cond_0

    .line 213
    instance-of v2, p1, Lcom/dropbox/core/v2/files/PreviewError;

    if-eqz v2, :cond_0

    .line 214
    check-cast p1, Lcom/dropbox/core/v2/files/PreviewError;

    .line 215
    iget-object v2, p0, Lcom/dropbox/core/v2/files/PreviewError;->_tag:Lcom/dropbox/core/v2/files/PreviewError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/PreviewError;->_tag:Lcom/dropbox/core/v2/files/PreviewError$Tag;

    if-ne v2, v3, :cond_0

    .line 218
    sget-object v2, Lcom/dropbox/core/v2/files/PreviewError$1;->$SwitchMap$com$dropbox$core$v2$files$PreviewError$Tag:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/files/PreviewError;->_tag:Lcom/dropbox/core/v2/files/PreviewError$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/files/PreviewError$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 220
    :pswitch_0
    iget-object v2, p0, Lcom/dropbox/core/v2/files/PreviewError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/PreviewError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/files/PreviewError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/PreviewError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/files/LookupError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 222
    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 224
    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 226
    goto :goto_0

    .line 218
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getPathValue()Lcom/dropbox/core/v2/files/LookupError;
    .locals 3

    .prologue
    .line 157
    iget-object v0, p0, Lcom/dropbox/core/v2/files/PreviewError;->_tag:Lcom/dropbox/core/v2/files/PreviewError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/PreviewError$Tag;->PATH:Lcom/dropbox/core/v2/files/PreviewError$Tag;

    if-eq v0, v1, :cond_0

    .line 158
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.PATH, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/PreviewError;->_tag:Lcom/dropbox/core/v2/files/PreviewError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/PreviewError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/PreviewError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 198
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/files/PreviewError;->_tag:Lcom/dropbox/core/v2/files/PreviewError$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/PreviewError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 202
    return v0
.end method

.method public isInProgress()Z
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/dropbox/core/v2/files/PreviewError;->_tag:Lcom/dropbox/core/v2/files/PreviewError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/PreviewError$Tag;->IN_PROGRESS:Lcom/dropbox/core/v2/files/PreviewError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPath()Z
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/dropbox/core/v2/files/PreviewError;->_tag:Lcom/dropbox/core/v2/files/PreviewError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/PreviewError$Tag;->PATH:Lcom/dropbox/core/v2/files/PreviewError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnsupportedContent()Z
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/dropbox/core/v2/files/PreviewError;->_tag:Lcom/dropbox/core/v2/files/PreviewError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/PreviewError$Tag;->UNSUPPORTED_CONTENT:Lcom/dropbox/core/v2/files/PreviewError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnsupportedExtension()Z
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/dropbox/core/v2/files/PreviewError;->_tag:Lcom/dropbox/core/v2/files/PreviewError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/PreviewError$Tag;->UNSUPPORTED_EXTENSION:Lcom/dropbox/core/v2/files/PreviewError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/files/PreviewError$Tag;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/dropbox/core/v2/files/PreviewError;->_tag:Lcom/dropbox/core/v2/files/PreviewError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 238
    sget-object v0, Lcom/dropbox/core/v2/files/PreviewError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/PreviewError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/PreviewError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 250
    sget-object v0, Lcom/dropbox/core/v2/files/PreviewError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/PreviewError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/PreviewError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
