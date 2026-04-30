.class public final Lcom/dropbox/core/v2/users/GetAccountBatchError;
.super Ljava/lang/Object;
.source "GetAccountBatchError.java"


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/users/GetAccountBatchError;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;

.field private noAccountValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    new-instance v0, Lcom/dropbox/core/v2/users/GetAccountBatchError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/users/GetAccountBatchError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;->OTHER:Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/users/GetAccountBatchError;->withTag(Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;)Lcom/dropbox/core/v2/users/GetAccountBatchError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/users/GetAccountBatchError;->OTHER:Lcom/dropbox/core/v2/users/GetAccountBatchError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/users/GetAccountBatchError;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/users/GetAccountBatchError;->noAccountValue:Ljava/lang/String;

    return-object v0
.end method

.method public static noAccount(Ljava/lang/String;)Lcom/dropbox/core/v2/users/GetAccountBatchError;
    .locals 2

    .prologue
    const/16 v1, 0x28

    .line 143
    if-nez p0, :cond_0

    .line 144
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v1, :cond_1

    .line 147
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String is shorter than 40"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 150
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String is longer than 40"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_2
    new-instance v0, Lcom/dropbox/core/v2/users/GetAccountBatchError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/users/GetAccountBatchError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;->NO_ACCOUNT:Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/users/GetAccountBatchError;->withTagAndNoAccount(Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/users/GetAccountBatchError;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;)Lcom/dropbox/core/v2/users/GetAccountBatchError;
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcom/dropbox/core/v2/users/GetAccountBatchError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/users/GetAccountBatchError;-><init>()V

    .line 76
    iput-object p1, v0, Lcom/dropbox/core/v2/users/GetAccountBatchError;->_tag:Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;

    .line 77
    return-object v0
.end method

.method private withTagAndNoAccount(Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/users/GetAccountBatchError;
    .locals 1

    .prologue
    .line 92
    new-instance v0, Lcom/dropbox/core/v2/users/GetAccountBatchError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/users/GetAccountBatchError;-><init>()V

    .line 93
    iput-object p1, v0, Lcom/dropbox/core/v2/users/GetAccountBatchError;->_tag:Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;

    .line 94
    iput-object p2, v0, Lcom/dropbox/core/v2/users/GetAccountBatchError;->noAccountValue:Ljava/lang/String;

    .line 95
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 195
    if-ne p1, p0, :cond_1

    move v0, v1

    .line 216
    :cond_0
    :goto_0
    return v0

    .line 198
    :cond_1
    if-eqz p1, :cond_0

    .line 201
    instance-of v2, p1, Lcom/dropbox/core/v2/users/GetAccountBatchError;

    if-eqz v2, :cond_0

    .line 202
    check-cast p1, Lcom/dropbox/core/v2/users/GetAccountBatchError;

    .line 203
    iget-object v2, p0, Lcom/dropbox/core/v2/users/GetAccountBatchError;->_tag:Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/users/GetAccountBatchError;->_tag:Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;

    if-ne v2, v3, :cond_0

    .line 206
    sget-object v2, Lcom/dropbox/core/v2/users/GetAccountBatchError$1;->$SwitchMap$com$dropbox$core$v2$users$GetAccountBatchError$Tag:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/users/GetAccountBatchError;->_tag:Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 208
    :pswitch_0
    iget-object v2, p0, Lcom/dropbox/core/v2/users/GetAccountBatchError;->noAccountValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/users/GetAccountBatchError;->noAccountValue:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/users/GetAccountBatchError;->noAccountValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/users/GetAccountBatchError;->noAccountValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 210
    goto :goto_0

    .line 206
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getNoAccountValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 167
    iget-object v0, p0, Lcom/dropbox/core/v2/users/GetAccountBatchError;->_tag:Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;->NO_ACCOUNT:Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;

    if-eq v0, v1, :cond_0

    .line 168
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.NO_ACCOUNT, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/users/GetAccountBatchError;->_tag:Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/users/GetAccountBatchError;->noAccountValue:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 186
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/users/GetAccountBatchError;->_tag:Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/users/GetAccountBatchError;->noAccountValue:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 190
    return v0
.end method

.method public isNoAccount()Z
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/dropbox/core/v2/users/GetAccountBatchError;->_tag:Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;->NO_ACCOUNT:Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;

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
    .line 181
    iget-object v0, p0, Lcom/dropbox/core/v2/users/GetAccountBatchError;->_tag:Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;->OTHER:Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/dropbox/core/v2/users/GetAccountBatchError;->_tag:Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 222
    sget-object v0, Lcom/dropbox/core/v2/users/GetAccountBatchError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/GetAccountBatchError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/users/GetAccountBatchError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 234
    sget-object v0, Lcom/dropbox/core/v2/users/GetAccountBatchError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/GetAccountBatchError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/users/GetAccountBatchError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
