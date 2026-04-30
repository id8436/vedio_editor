.class public final Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;
.super Ljava/lang/Object;
.source "UpdateFileRequestDeadline.java"


# static fields
.field public static final NO_UPDATE:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;

.field public static final OTHER:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;

.field private updateValue:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    new-instance v0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;

    invoke-direct {v0}, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;->NO_UPDATE:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->withTag(Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;)Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->NO_UPDATE:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;

    .line 65
    new-instance v0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;

    invoke-direct {v0}, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;->OTHER:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->withTag(Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;)Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->OTHER:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;

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

.method static synthetic access$000(Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;)Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->updateValue:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;

    return-object v0
.end method

.method public static update()Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->update(Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;)Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;

    move-result-object v0

    return-object v0
.end method

.method public static update(Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;)Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;
    .locals 2

    .prologue
    .line 152
    new-instance v0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;

    invoke-direct {v0}, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;->UPDATE:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->withTagAndUpdate(Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;)Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;)Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;

    invoke-direct {v0}, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;-><init>()V

    .line 83
    iput-object p1, v0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->_tag:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;

    .line 84
    return-object v0
.end method

.method private withTagAndUpdate(Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;)Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;
    .locals 1

    .prologue
    .line 94
    new-instance v0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;

    invoke-direct {v0}, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;-><init>()V

    .line 95
    iput-object p1, v0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->_tag:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;

    .line 96
    iput-object p2, v0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->updateValue:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;

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

    .line 230
    :cond_0
    :goto_0
    return v0

    .line 210
    :cond_1
    if-eqz p1, :cond_0

    .line 213
    instance-of v2, p1, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;

    if-eqz v2, :cond_0

    .line 214
    check-cast p1, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;

    .line 215
    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->_tag:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->_tag:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;

    if-ne v2, v3, :cond_0

    .line 218
    sget-object v2, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$1;->$SwitchMap$com$dropbox$core$v2$filerequests$UpdateFileRequestDeadline$Tag:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->_tag:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v0, v1

    .line 220
    goto :goto_0

    .line 222
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->updateValue:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;

    iget-object v3, p1, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->updateValue:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->updateValue:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->updateValue:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;

    iget-object v3, p1, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->updateValue:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 224
    goto :goto_0

    .line 218
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getUpdateValue()Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;
    .locals 3

    .prologue
    .line 179
    iget-object v0, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->_tag:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;

    sget-object v1, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;->UPDATE:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;

    if-eq v0, v1, :cond_0

    .line 180
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.UPDATE, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->_tag:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->updateValue:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 198
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->_tag:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->updateValue:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 202
    return v0
.end method

.method public isNoUpdate()Z
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->_tag:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;

    sget-object v1, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;->NO_UPDATE:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;

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
    .line 193
    iget-object v0, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->_tag:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;

    sget-object v1, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;->OTHER:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;

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
    .line 137
    iget-object v0, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->_tag:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;

    sget-object v1, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;->UPDATE:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->_tag:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 236
    sget-object v0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Serializer;->INSTANCE:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 248
    sget-object v0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Serializer;->INSTANCE:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
