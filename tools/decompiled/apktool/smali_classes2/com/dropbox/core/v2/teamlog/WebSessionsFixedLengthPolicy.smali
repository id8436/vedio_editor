.class public final Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;
.super Ljava/lang/Object;
.source "WebSessionsFixedLengthPolicy.java"


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;

.field public static final UNDEFINED:Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy$Tag;

.field private definedValue:Lcom/dropbox/core/v2/teamlog/DurationLogInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 59
    new-instance v0, Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy$Tag;->UNDEFINED:Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;->withTag(Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy$Tag;)Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;->UNDEFINED:Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;

    .line 67
    new-instance v0, Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy$Tag;->OTHER:Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;->withTag(Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy$Tag;)Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;->OTHER:Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;)Lcom/dropbox/core/v2/teamlog/DurationLogInfo;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;->definedValue:Lcom/dropbox/core/v2/teamlog/DurationLogInfo;

    return-object v0
.end method

.method public static defined(Lcom/dropbox/core/v2/teamlog/DurationLogInfo;)Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;
    .locals 2

    .prologue
    .line 150
    if-nez p0, :cond_0

    .line 151
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy$Tag;->DEFINED:Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;->withTagAndDefined(Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy$Tag;Lcom/dropbox/core/v2/teamlog/DurationLogInfo;)Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy$Tag;)Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;
    .locals 1

    .prologue
    .line 85
    new-instance v0, Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;-><init>()V

    .line 86
    iput-object p1, v0, Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;->_tag:Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy$Tag;

    .line 87
    return-object v0
.end method

.method private withTagAndDefined(Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy$Tag;Lcom/dropbox/core/v2/teamlog/DurationLogInfo;)Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;
    .locals 1

    .prologue
    .line 101
    new-instance v0, Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;-><init>()V

    .line 102
    iput-object p1, v0, Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;->_tag:Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy$Tag;

    .line 103
    iput-object p2, v0, Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;->definedValue:Lcom/dropbox/core/v2/teamlog/DurationLogInfo;

    .line 104
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 206
    if-ne p1, p0, :cond_1

    move v0, v1

    .line 229
    :cond_0
    :goto_0
    return v0

    .line 209
    :cond_1
    if-eqz p1, :cond_0

    .line 212
    instance-of v2, p1, Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;

    if-eqz v2, :cond_0

    .line 213
    check-cast p1, Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;

    .line 214
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;->_tag:Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;->_tag:Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy$Tag;

    if-ne v2, v3, :cond_0

    .line 217
    sget-object v2, Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy$1;->$SwitchMap$com$dropbox$core$v2$teamlog$WebSessionsFixedLengthPolicy$Tag:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;->_tag:Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 219
    :pswitch_0
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;->definedValue:Lcom/dropbox/core/v2/teamlog/DurationLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;->definedValue:Lcom/dropbox/core/v2/teamlog/DurationLogInfo;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;->definedValue:Lcom/dropbox/core/v2/teamlog/DurationLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;->definedValue:Lcom/dropbox/core/v2/teamlog/DurationLogInfo;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/teamlog/DurationLogInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 221
    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 223
    goto :goto_0

    .line 217
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getDefinedValue()Lcom/dropbox/core/v2/teamlog/DurationLogInfo;
    .locals 3

    .prologue
    .line 167
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;->_tag:Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy$Tag;->DEFINED:Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy$Tag;

    if-eq v0, v1, :cond_0

    .line 168
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.DEFINED, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;->_tag:Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;->definedValue:Lcom/dropbox/core/v2/teamlog/DurationLogInfo;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 197
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;->_tag:Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;->definedValue:Lcom/dropbox/core/v2/teamlog/DurationLogInfo;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 201
    return v0
.end method

.method public isDefined()Z
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;->_tag:Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy$Tag;->DEFINED:Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy$Tag;

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
    .line 192
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;->_tag:Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy$Tag;->OTHER:Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUndefined()Z
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;->_tag:Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy$Tag;->UNDEFINED:Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy$Tag;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;->_tag:Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 235
    sget-object v0, Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 247
    sget-object v0, Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
