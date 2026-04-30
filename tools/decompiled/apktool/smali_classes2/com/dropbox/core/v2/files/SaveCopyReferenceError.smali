.class public final Lcom/dropbox/core/v2/files/SaveCopyReferenceError;
.super Ljava/lang/Object;
.source "SaveCopyReferenceError.java"


# static fields
.field public static final INVALID_COPY_REFERENCE:Lcom/dropbox/core/v2/files/SaveCopyReferenceError;

.field public static final NOT_FOUND:Lcom/dropbox/core/v2/files/SaveCopyReferenceError;

.field public static final NO_PERMISSION:Lcom/dropbox/core/v2/files/SaveCopyReferenceError;

.field public static final OTHER:Lcom/dropbox/core/v2/files/SaveCopyReferenceError;

.field public static final TOO_MANY_FILES:Lcom/dropbox/core/v2/files/SaveCopyReferenceError;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;

.field private pathValue:Lcom/dropbox/core/v2/files/WriteError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 68
    new-instance v0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;->INVALID_COPY_REFERENCE:Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;->withTag(Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;)Lcom/dropbox/core/v2/files/SaveCopyReferenceError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;->INVALID_COPY_REFERENCE:Lcom/dropbox/core/v2/files/SaveCopyReferenceError;

    .line 74
    new-instance v0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;->NO_PERMISSION:Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;->withTag(Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;)Lcom/dropbox/core/v2/files/SaveCopyReferenceError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;->NO_PERMISSION:Lcom/dropbox/core/v2/files/SaveCopyReferenceError;

    .line 78
    new-instance v0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;->NOT_FOUND:Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;->withTag(Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;)Lcom/dropbox/core/v2/files/SaveCopyReferenceError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;->NOT_FOUND:Lcom/dropbox/core/v2/files/SaveCopyReferenceError;

    .line 82
    new-instance v0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;->TOO_MANY_FILES:Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;->withTag(Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;)Lcom/dropbox/core/v2/files/SaveCopyReferenceError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;->TOO_MANY_FILES:Lcom/dropbox/core/v2/files/SaveCopyReferenceError;

    .line 90
    new-instance v0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;->OTHER:Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;->withTag(Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;)Lcom/dropbox/core/v2/files/SaveCopyReferenceError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;->OTHER:Lcom/dropbox/core/v2/files/SaveCopyReferenceError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/files/SaveCopyReferenceError;)Lcom/dropbox/core/v2/files/WriteError;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;->pathValue:Lcom/dropbox/core/v2/files/WriteError;

    return-object v0
.end method

.method public static path(Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/SaveCopyReferenceError;
    .locals 2

    .prologue
    .line 170
    if-nez p0, :cond_0

    .line 171
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;->PATH:Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;->withTagAndPath(Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/SaveCopyReferenceError;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;)Lcom/dropbox/core/v2/files/SaveCopyReferenceError;
    .locals 1

    .prologue
    .line 107
    new-instance v0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;-><init>()V

    .line 108
    iput-object p1, v0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;->_tag:Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;

    .line 109
    return-object v0
.end method

.method private withTagAndPath(Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/SaveCopyReferenceError;
    .locals 1

    .prologue
    .line 121
    new-instance v0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;-><init>()V

    .line 122
    iput-object p1, v0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;->_tag:Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;

    .line 123
    iput-object p2, v0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;->pathValue:Lcom/dropbox/core/v2/files/WriteError;

    .line 124
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 257
    if-ne p1, p0, :cond_0

    .line 286
    :goto_0
    :pswitch_0
    return v1

    .line 260
    :cond_0
    if-nez p1, :cond_1

    move v1, v0

    .line 261
    goto :goto_0

    .line 263
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;

    if-eqz v2, :cond_5

    .line 264
    check-cast p1, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;

    .line 265
    iget-object v2, p0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;->_tag:Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;->_tag:Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;

    if-eq v2, v3, :cond_2

    move v1, v0

    .line 266
    goto :goto_0

    .line 268
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/files/SaveCopyReferenceError$1;->$SwitchMap$com$dropbox$core$v2$files$SaveCopyReferenceError$Tag:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;->_tag:Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move v1, v0

    .line 282
    goto :goto_0

    .line 270
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;->pathValue:Lcom/dropbox/core/v2/files/WriteError;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;->pathValue:Lcom/dropbox/core/v2/files/WriteError;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;->pathValue:Lcom/dropbox/core/v2/files/WriteError;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;->pathValue:Lcom/dropbox/core/v2/files/WriteError;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/files/WriteError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    move v1, v0

    goto :goto_0

    :cond_5
    move v1, v0

    .line 286
    goto :goto_0

    .line 268
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getPathValue()Lcom/dropbox/core/v2/files/WriteError;
    .locals 3

    .prologue
    .line 185
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;->_tag:Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;->PATH:Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;

    if-eq v0, v1, :cond_0

    .line 186
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.PATH, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;->_tag:Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;->pathValue:Lcom/dropbox/core/v2/files/WriteError;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 248
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;->_tag:Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;->pathValue:Lcom/dropbox/core/v2/files/WriteError;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 252
    return v0
.end method

.method public isInvalidCopyReference()Z
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;->_tag:Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;->INVALID_COPY_REFERENCE:Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNoPermission()Z
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;->_tag:Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;->NO_PERMISSION:Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNotFound()Z
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;->_tag:Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;->NOT_FOUND:Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOther()Z
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;->_tag:Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;->OTHER:Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;

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
    .line 153
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;->_tag:Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;->PATH:Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTooManyFiles()Z
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;->_tag:Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;->TOO_MANY_FILES:Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;->_tag:Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 292
    sget-object v0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 304
    sget-object v0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
