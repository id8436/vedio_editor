.class public final Lcom/dropbox/core/v2/sharing/ListSharedLinksError;
.super Ljava/lang/Object;
.source "ListSharedLinksError.java"


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/sharing/ListSharedLinksError;

.field public static final RESET:Lcom/dropbox/core/v2/sharing/ListSharedLinksError;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/sharing/ListSharedLinksError$Tag;

.field private pathValue:Lcom/dropbox/core/v2/files/LookupError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListSharedLinksError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ListSharedLinksError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/ListSharedLinksError$Tag;->RESET:Lcom/dropbox/core/v2/sharing/ListSharedLinksError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/ListSharedLinksError;->withTag(Lcom/dropbox/core/v2/sharing/ListSharedLinksError$Tag;)Lcom/dropbox/core/v2/sharing/ListSharedLinksError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/ListSharedLinksError;->RESET:Lcom/dropbox/core/v2/sharing/ListSharedLinksError;

    .line 65
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListSharedLinksError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ListSharedLinksError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/ListSharedLinksError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/ListSharedLinksError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/ListSharedLinksError;->withTag(Lcom/dropbox/core/v2/sharing/ListSharedLinksError$Tag;)Lcom/dropbox/core/v2/sharing/ListSharedLinksError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/ListSharedLinksError;->OTHER:Lcom/dropbox/core/v2/sharing/ListSharedLinksError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/sharing/ListSharedLinksError;)Lcom/dropbox/core/v2/files/LookupError;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListSharedLinksError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    return-object v0
.end method

.method public static path(Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/sharing/ListSharedLinksError;
    .locals 2

    .prologue
    .line 145
    if-nez p0, :cond_0

    .line 146
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListSharedLinksError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ListSharedLinksError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/ListSharedLinksError$Tag;->PATH:Lcom/dropbox/core/v2/sharing/ListSharedLinksError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/ListSharedLinksError;->withTagAndPath(Lcom/dropbox/core/v2/sharing/ListSharedLinksError$Tag;Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/sharing/ListSharedLinksError;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/sharing/ListSharedLinksError$Tag;)Lcom/dropbox/core/v2/sharing/ListSharedLinksError;
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListSharedLinksError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ListSharedLinksError;-><init>()V

    .line 83
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/ListSharedLinksError;->_tag:Lcom/dropbox/core/v2/sharing/ListSharedLinksError$Tag;

    .line 84
    return-object v0
.end method

.method private withTagAndPath(Lcom/dropbox/core/v2/sharing/ListSharedLinksError$Tag;Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/sharing/ListSharedLinksError;
    .locals 1

    .prologue
    .line 96
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListSharedLinksError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ListSharedLinksError;-><init>()V

    .line 97
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/ListSharedLinksError;->_tag:Lcom/dropbox/core/v2/sharing/ListSharedLinksError$Tag;

    .line 98
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/ListSharedLinksError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    .line 99
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 199
    if-ne p1, p0, :cond_1

    move v0, v1

    .line 222
    :cond_0
    :goto_0
    return v0

    .line 202
    :cond_1
    if-eqz p1, :cond_0

    .line 205
    instance-of v2, p1, Lcom/dropbox/core/v2/sharing/ListSharedLinksError;

    if-eqz v2, :cond_0

    .line 206
    check-cast p1, Lcom/dropbox/core/v2/sharing/ListSharedLinksError;

    .line 207
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListSharedLinksError;->_tag:Lcom/dropbox/core/v2/sharing/ListSharedLinksError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ListSharedLinksError;->_tag:Lcom/dropbox/core/v2/sharing/ListSharedLinksError$Tag;

    if-ne v2, v3, :cond_0

    .line 210
    sget-object v2, Lcom/dropbox/core/v2/sharing/ListSharedLinksError$1;->$SwitchMap$com$dropbox$core$v2$sharing$ListSharedLinksError$Tag:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ListSharedLinksError;->_tag:Lcom/dropbox/core/v2/sharing/ListSharedLinksError$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/sharing/ListSharedLinksError$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 212
    :pswitch_0
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListSharedLinksError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ListSharedLinksError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListSharedLinksError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ListSharedLinksError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/files/LookupError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 214
    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 216
    goto :goto_0

    .line 210
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getPathValue()Lcom/dropbox/core/v2/files/LookupError;
    .locals 3

    .prologue
    .line 160
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListSharedLinksError;->_tag:Lcom/dropbox/core/v2/sharing/ListSharedLinksError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ListSharedLinksError$Tag;->PATH:Lcom/dropbox/core/v2/sharing/ListSharedLinksError$Tag;

    if-eq v0, v1, :cond_0

    .line 161
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.PATH, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListSharedLinksError;->_tag:Lcom/dropbox/core/v2/sharing/ListSharedLinksError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/ListSharedLinksError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListSharedLinksError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 190
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListSharedLinksError;->_tag:Lcom/dropbox/core/v2/sharing/ListSharedLinksError$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListSharedLinksError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 194
    return v0
.end method

.method public isOther()Z
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListSharedLinksError;->_tag:Lcom/dropbox/core/v2/sharing/ListSharedLinksError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ListSharedLinksError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/ListSharedLinksError$Tag;

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
    .line 128
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListSharedLinksError;->_tag:Lcom/dropbox/core/v2/sharing/ListSharedLinksError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ListSharedLinksError$Tag;->PATH:Lcom/dropbox/core/v2/sharing/ListSharedLinksError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReset()Z
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListSharedLinksError;->_tag:Lcom/dropbox/core/v2/sharing/ListSharedLinksError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ListSharedLinksError$Tag;->RESET:Lcom/dropbox/core/v2/sharing/ListSharedLinksError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/ListSharedLinksError$Tag;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListSharedLinksError;->_tag:Lcom/dropbox/core/v2/sharing/ListSharedLinksError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 228
    sget-object v0, Lcom/dropbox/core/v2/sharing/ListSharedLinksError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListSharedLinksError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ListSharedLinksError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 240
    sget-object v0, Lcom/dropbox/core/v2/sharing/ListSharedLinksError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListSharedLinksError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ListSharedLinksError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
