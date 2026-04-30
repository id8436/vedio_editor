.class Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "WebSessionsIdleLengthPolicy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 254
    new-instance v0, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 253
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 281
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 283
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 284
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    move v1, v2

    .line 291
    :goto_0
    if-nez v0, :cond_1

    .line 292
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_0
    const/4 v1, 0x0

    .line 288
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 289
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 294
    :cond_1
    const-string/jumbo v3, "defined"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 296
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DurationLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DurationLogInfo$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DurationLogInfo$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/DurationLogInfo;

    move-result-object v0

    .line 297
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;->defined(Lcom/dropbox/core/v2/teamlog/DurationLogInfo;)Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;

    move-result-object v0

    .line 305
    :goto_1
    if-nez v1, :cond_2

    .line 306
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 307
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 309
    :cond_2
    return-object v0

    .line 299
    :cond_3
    const-string/jumbo v2, "undefined"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 300
    sget-object v0, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;->UNDEFINED:Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;

    goto :goto_1

    .line 303
    :cond_4
    sget-object v0, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;->OTHER:Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;

    goto :goto_1
.end method

.method public bridge synthetic deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 253
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;Lcom/d/a/a/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 258
    sget-object v0, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$1;->$SwitchMap$com$dropbox$core$v2$teamlog$WebSessionsIdleLengthPolicy$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;->tag()Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 271
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 274
    :goto_0
    return-void

    .line 260
    :pswitch_0
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 261
    const-string/jumbo v0, "defined"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 262
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DurationLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DurationLogInfo$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;->access$000(Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;)Lcom/dropbox/core/v2/teamlog/DurationLogInfo;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/DurationLogInfo$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/DurationLogInfo;Lcom/d/a/a/g;Z)V

    .line 263
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 267
    :pswitch_1
    const-string/jumbo v0, "undefined"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 258
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 253
    check-cast p1, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;Lcom/d/a/a/g;)V

    return-void
.end method
