.class public final Lcom/dropbox/core/v2/files/WriteMode;
.super Ljava/lang/Object;
.source "WriteMode.java"


# static fields
.field public static final ADD:Lcom/dropbox/core/v2/files/WriteMode;

.field public static final OVERWRITE:Lcom/dropbox/core/v2/files/WriteMode;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/files/WriteMode$Tag;

.field private updateValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 67
    new-instance v0, Lcom/dropbox/core/v2/files/WriteMode;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/WriteMode;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/WriteMode$Tag;->ADD:Lcom/dropbox/core/v2/files/WriteMode$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/WriteMode;->withTag(Lcom/dropbox/core/v2/files/WriteMode$Tag;)Lcom/dropbox/core/v2/files/WriteMode;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/WriteMode;->ADD:Lcom/dropbox/core/v2/files/WriteMode;

    .line 72
    new-instance v0, Lcom/dropbox/core/v2/files/WriteMode;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/WriteMode;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/WriteMode$Tag;->OVERWRITE:Lcom/dropbox/core/v2/files/WriteMode$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/WriteMode;->withTag(Lcom/dropbox/core/v2/files/WriteMode$Tag;)Lcom/dropbox/core/v2/files/WriteMode;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/WriteMode;->OVERWRITE:Lcom/dropbox/core/v2/files/WriteMode;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/files/WriteMode;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/dropbox/core/v2/files/WriteMode;->updateValue:Ljava/lang/String;

    return-object v0
.end method

.method public static update(Ljava/lang/String;)Lcom/dropbox/core/v2/files/WriteMode;
    .locals 2

    .prologue
    .line 198
    if-nez p0, :cond_0

    .line 199
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x9

    if-ge v0, v1, :cond_1

    .line 202
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String is shorter than 9"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_1
    const-string/jumbo v0, "[0-9a-f]+"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 205
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_2
    new-instance v0, Lcom/dropbox/core/v2/files/WriteMode;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/WriteMode;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/WriteMode$Tag;->UPDATE:Lcom/dropbox/core/v2/files/WriteMode$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/WriteMode;->withTagAndUpdate(Lcom/dropbox/core/v2/files/WriteMode$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/files/WriteMode;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/files/WriteMode$Tag;)Lcom/dropbox/core/v2/files/WriteMode;
    .locals 1

    .prologue
    .line 98
    new-instance v0, Lcom/dropbox/core/v2/files/WriteMode;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/WriteMode;-><init>()V

    .line 99
    iput-object p1, v0, Lcom/dropbox/core/v2/files/WriteMode;->_tag:Lcom/dropbox/core/v2/files/WriteMode$Tag;

    .line 100
    return-object v0
.end method

.method private withTagAndUpdate(Lcom/dropbox/core/v2/files/WriteMode$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/files/WriteMode;
    .locals 1

    .prologue
    .line 126
    new-instance v0, Lcom/dropbox/core/v2/files/WriteMode;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/WriteMode;-><init>()V

    .line 127
    iput-object p1, v0, Lcom/dropbox/core/v2/files/WriteMode;->_tag:Lcom/dropbox/core/v2/files/WriteMode$Tag;

    .line 128
    iput-object p2, v0, Lcom/dropbox/core/v2/files/WriteMode;->updateValue:Ljava/lang/String;

    .line 129
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 241
    if-ne p1, p0, :cond_1

    move v0, v1

    .line 264
    :cond_0
    :goto_0
    return v0

    .line 244
    :cond_1
    if-eqz p1, :cond_0

    .line 247
    instance-of v2, p1, Lcom/dropbox/core/v2/files/WriteMode;

    if-eqz v2, :cond_0

    .line 248
    check-cast p1, Lcom/dropbox/core/v2/files/WriteMode;

    .line 249
    iget-object v2, p0, Lcom/dropbox/core/v2/files/WriteMode;->_tag:Lcom/dropbox/core/v2/files/WriteMode$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/WriteMode;->_tag:Lcom/dropbox/core/v2/files/WriteMode$Tag;

    if-ne v2, v3, :cond_0

    .line 252
    sget-object v2, Lcom/dropbox/core/v2/files/WriteMode$1;->$SwitchMap$com$dropbox$core$v2$files$WriteMode$Tag:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/files/WriteMode;->_tag:Lcom/dropbox/core/v2/files/WriteMode$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/files/WriteMode$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v0, v1

    .line 254
    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 256
    goto :goto_0

    .line 258
    :pswitch_2
    iget-object v2, p0, Lcom/dropbox/core/v2/files/WriteMode;->updateValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/WriteMode;->updateValue:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/files/WriteMode;->updateValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/WriteMode;->updateValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 252
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getUpdateValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 224
    iget-object v0, p0, Lcom/dropbox/core/v2/files/WriteMode;->_tag:Lcom/dropbox/core/v2/files/WriteMode$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/WriteMode$Tag;->UPDATE:Lcom/dropbox/core/v2/files/WriteMode$Tag;

    if-eq v0, v1, :cond_0

    .line 225
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.UPDATE, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/WriteMode;->_tag:Lcom/dropbox/core/v2/files/WriteMode$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/WriteMode$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/WriteMode;->updateValue:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 232
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/files/WriteMode;->_tag:Lcom/dropbox/core/v2/files/WriteMode$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/WriteMode;->updateValue:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 236
    return v0
.end method

.method public isAdd()Z
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/dropbox/core/v2/files/WriteMode;->_tag:Lcom/dropbox/core/v2/files/WriteMode$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/WriteMode$Tag;->ADD:Lcom/dropbox/core/v2/files/WriteMode$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverwrite()Z
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/dropbox/core/v2/files/WriteMode;->_tag:Lcom/dropbox/core/v2/files/WriteMode$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/WriteMode$Tag;->OVERWRITE:Lcom/dropbox/core/v2/files/WriteMode$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUpdate()Z
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/dropbox/core/v2/files/WriteMode;->_tag:Lcom/dropbox/core/v2/files/WriteMode$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/WriteMode$Tag;->UPDATE:Lcom/dropbox/core/v2/files/WriteMode$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/files/WriteMode$Tag;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/dropbox/core/v2/files/WriteMode;->_tag:Lcom/dropbox/core/v2/files/WriteMode$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 270
    sget-object v0, Lcom/dropbox/core/v2/files/WriteMode$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/WriteMode$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/WriteMode$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 282
    sget-object v0, Lcom/dropbox/core/v2/files/WriteMode$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/WriteMode$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/WriteMode$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
