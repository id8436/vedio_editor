.class public final Lcom/dropbox/core/v2/auth/AccessError;
.super Ljava/lang/Object;
.source "AccessError.java"


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/auth/AccessError;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/auth/AccessError$Tag;

.field private invalidAccountTypeValue:Lcom/dropbox/core/v2/auth/InvalidAccountTypeError;

.field private paperAccessDeniedValue:Lcom/dropbox/core/v2/auth/PaperAccessError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 64
    new-instance v0, Lcom/dropbox/core/v2/auth/AccessError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/auth/AccessError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/auth/AccessError$Tag;->OTHER:Lcom/dropbox/core/v2/auth/AccessError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/auth/AccessError;->withTag(Lcom/dropbox/core/v2/auth/AccessError$Tag;)Lcom/dropbox/core/v2/auth/AccessError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/auth/AccessError;->OTHER:Lcom/dropbox/core/v2/auth/AccessError;

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

.method static synthetic access$000(Lcom/dropbox/core/v2/auth/AccessError;)Lcom/dropbox/core/v2/auth/InvalidAccountTypeError;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dropbox/core/v2/auth/AccessError;->invalidAccountTypeValue:Lcom/dropbox/core/v2/auth/InvalidAccountTypeError;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/auth/AccessError;)Lcom/dropbox/core/v2/auth/PaperAccessError;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dropbox/core/v2/auth/AccessError;->paperAccessDeniedValue:Lcom/dropbox/core/v2/auth/PaperAccessError;

    return-object v0
.end method

.method public static invalidAccountType(Lcom/dropbox/core/v2/auth/InvalidAccountTypeError;)Lcom/dropbox/core/v2/auth/AccessError;
    .locals 2

    .prologue
    .line 168
    if-nez p0, :cond_0

    .line 169
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/auth/AccessError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/auth/AccessError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/auth/AccessError$Tag;->INVALID_ACCOUNT_TYPE:Lcom/dropbox/core/v2/auth/AccessError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/auth/AccessError;->withTagAndInvalidAccountType(Lcom/dropbox/core/v2/auth/AccessError$Tag;Lcom/dropbox/core/v2/auth/InvalidAccountTypeError;)Lcom/dropbox/core/v2/auth/AccessError;

    move-result-object v0

    return-object v0
.end method

.method public static paperAccessDenied(Lcom/dropbox/core/v2/auth/PaperAccessError;)Lcom/dropbox/core/v2/auth/AccessError;
    .locals 2

    .prologue
    .line 218
    if-nez p0, :cond_0

    .line 219
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/auth/AccessError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/auth/AccessError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/auth/AccessError$Tag;->PAPER_ACCESS_DENIED:Lcom/dropbox/core/v2/auth/AccessError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/auth/AccessError;->withTagAndPaperAccessDenied(Lcom/dropbox/core/v2/auth/AccessError$Tag;Lcom/dropbox/core/v2/auth/PaperAccessError;)Lcom/dropbox/core/v2/auth/AccessError;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/auth/AccessError$Tag;)Lcom/dropbox/core/v2/auth/AccessError;
    .locals 1

    .prologue
    .line 84
    new-instance v0, Lcom/dropbox/core/v2/auth/AccessError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/auth/AccessError;-><init>()V

    .line 85
    iput-object p1, v0, Lcom/dropbox/core/v2/auth/AccessError;->_tag:Lcom/dropbox/core/v2/auth/AccessError$Tag;

    .line 86
    return-object v0
.end method

.method private withTagAndInvalidAccountType(Lcom/dropbox/core/v2/auth/AccessError$Tag;Lcom/dropbox/core/v2/auth/InvalidAccountTypeError;)Lcom/dropbox/core/v2/auth/AccessError;
    .locals 1

    .prologue
    .line 101
    new-instance v0, Lcom/dropbox/core/v2/auth/AccessError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/auth/AccessError;-><init>()V

    .line 102
    iput-object p1, v0, Lcom/dropbox/core/v2/auth/AccessError;->_tag:Lcom/dropbox/core/v2/auth/AccessError$Tag;

    .line 103
    iput-object p2, v0, Lcom/dropbox/core/v2/auth/AccessError;->invalidAccountTypeValue:Lcom/dropbox/core/v2/auth/InvalidAccountTypeError;

    .line 104
    return-object v0
.end method

.method private withTagAndPaperAccessDenied(Lcom/dropbox/core/v2/auth/AccessError$Tag;Lcom/dropbox/core/v2/auth/PaperAccessError;)Lcom/dropbox/core/v2/auth/AccessError;
    .locals 1

    .prologue
    .line 119
    new-instance v0, Lcom/dropbox/core/v2/auth/AccessError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/auth/AccessError;-><init>()V

    .line 120
    iput-object p1, v0, Lcom/dropbox/core/v2/auth/AccessError;->_tag:Lcom/dropbox/core/v2/auth/AccessError$Tag;

    .line 121
    iput-object p2, v0, Lcom/dropbox/core/v2/auth/AccessError;->paperAccessDeniedValue:Lcom/dropbox/core/v2/auth/PaperAccessError;

    .line 122
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 265
    if-ne p1, p0, :cond_1

    move v0, v1

    .line 288
    :cond_0
    :goto_0
    return v0

    .line 268
    :cond_1
    if-eqz p1, :cond_0

    .line 271
    instance-of v2, p1, Lcom/dropbox/core/v2/auth/AccessError;

    if-eqz v2, :cond_0

    .line 272
    check-cast p1, Lcom/dropbox/core/v2/auth/AccessError;

    .line 273
    iget-object v2, p0, Lcom/dropbox/core/v2/auth/AccessError;->_tag:Lcom/dropbox/core/v2/auth/AccessError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/auth/AccessError;->_tag:Lcom/dropbox/core/v2/auth/AccessError$Tag;

    if-ne v2, v3, :cond_0

    .line 276
    sget-object v2, Lcom/dropbox/core/v2/auth/AccessError$1;->$SwitchMap$com$dropbox$core$v2$auth$AccessError$Tag:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/auth/AccessError;->_tag:Lcom/dropbox/core/v2/auth/AccessError$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/auth/AccessError$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 278
    :pswitch_0
    iget-object v2, p0, Lcom/dropbox/core/v2/auth/AccessError;->invalidAccountTypeValue:Lcom/dropbox/core/v2/auth/InvalidAccountTypeError;

    iget-object v3, p1, Lcom/dropbox/core/v2/auth/AccessError;->invalidAccountTypeValue:Lcom/dropbox/core/v2/auth/InvalidAccountTypeError;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/auth/AccessError;->invalidAccountTypeValue:Lcom/dropbox/core/v2/auth/InvalidAccountTypeError;

    iget-object v3, p1, Lcom/dropbox/core/v2/auth/AccessError;->invalidAccountTypeValue:Lcom/dropbox/core/v2/auth/InvalidAccountTypeError;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/auth/InvalidAccountTypeError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 280
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/auth/AccessError;->paperAccessDeniedValue:Lcom/dropbox/core/v2/auth/PaperAccessError;

    iget-object v3, p1, Lcom/dropbox/core/v2/auth/AccessError;->paperAccessDeniedValue:Lcom/dropbox/core/v2/auth/PaperAccessError;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/auth/AccessError;->paperAccessDeniedValue:Lcom/dropbox/core/v2/auth/PaperAccessError;

    iget-object v3, p1, Lcom/dropbox/core/v2/auth/AccessError;->paperAccessDeniedValue:Lcom/dropbox/core/v2/auth/PaperAccessError;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/auth/PaperAccessError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 282
    goto :goto_0

    .line 276
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getInvalidAccountTypeValue()Lcom/dropbox/core/v2/auth/InvalidAccountTypeError;
    .locals 3

    .prologue
    .line 187
    iget-object v0, p0, Lcom/dropbox/core/v2/auth/AccessError;->_tag:Lcom/dropbox/core/v2/auth/AccessError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/auth/AccessError$Tag;->INVALID_ACCOUNT_TYPE:Lcom/dropbox/core/v2/auth/AccessError$Tag;

    if-eq v0, v1, :cond_0

    .line 188
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.INVALID_ACCOUNT_TYPE, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/auth/AccessError;->_tag:Lcom/dropbox/core/v2/auth/AccessError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/auth/AccessError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/auth/AccessError;->invalidAccountTypeValue:Lcom/dropbox/core/v2/auth/InvalidAccountTypeError;

    return-object v0
.end method

.method public getPaperAccessDeniedValue()Lcom/dropbox/core/v2/auth/PaperAccessError;
    .locals 3

    .prologue
    .line 236
    iget-object v0, p0, Lcom/dropbox/core/v2/auth/AccessError;->_tag:Lcom/dropbox/core/v2/auth/AccessError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/auth/AccessError$Tag;->PAPER_ACCESS_DENIED:Lcom/dropbox/core/v2/auth/AccessError$Tag;

    if-eq v0, v1, :cond_0

    .line 237
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.PAPER_ACCESS_DENIED, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/auth/AccessError;->_tag:Lcom/dropbox/core/v2/auth/AccessError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/auth/AccessError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/auth/AccessError;->paperAccessDeniedValue:Lcom/dropbox/core/v2/auth/PaperAccessError;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 255
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/auth/AccessError;->_tag:Lcom/dropbox/core/v2/auth/AccessError$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/auth/AccessError;->invalidAccountTypeValue:Lcom/dropbox/core/v2/auth/InvalidAccountTypeError;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/auth/AccessError;->paperAccessDeniedValue:Lcom/dropbox/core/v2/auth/PaperAccessError;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 260
    return v0
.end method

.method public isInvalidAccountType()Z
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/dropbox/core/v2/auth/AccessError;->_tag:Lcom/dropbox/core/v2/auth/AccessError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/auth/AccessError$Tag;->INVALID_ACCOUNT_TYPE:Lcom/dropbox/core/v2/auth/AccessError$Tag;

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
    .line 250
    iget-object v0, p0, Lcom/dropbox/core/v2/auth/AccessError;->_tag:Lcom/dropbox/core/v2/auth/AccessError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/auth/AccessError$Tag;->OTHER:Lcom/dropbox/core/v2/auth/AccessError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPaperAccessDenied()Z
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/dropbox/core/v2/auth/AccessError;->_tag:Lcom/dropbox/core/v2/auth/AccessError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/auth/AccessError$Tag;->PAPER_ACCESS_DENIED:Lcom/dropbox/core/v2/auth/AccessError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/auth/AccessError$Tag;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/dropbox/core/v2/auth/AccessError;->_tag:Lcom/dropbox/core/v2/auth/AccessError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 294
    sget-object v0, Lcom/dropbox/core/v2/auth/AccessError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/auth/AccessError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/auth/AccessError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 306
    sget-object v0, Lcom/dropbox/core/v2/auth/AccessError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/auth/AccessError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/auth/AccessError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
