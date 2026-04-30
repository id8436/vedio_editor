.class Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "GetTeamEventsArg.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 281
    new-instance v0, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 280
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 310
    .line 311
    if-nez p2, :cond_7

    .line 312
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 313
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 315
    :goto_0
    if-nez v0, :cond_6

    .line 316
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object v5, v6

    move-object v4, v6

    .line 320
    :goto_1
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_4

    .line 321
    invoke-virtual {p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v0

    .line 322
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 323
    const-string/jumbo v1, "limit"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 324
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt32()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    :goto_2
    move-object v2, v0

    .line 338
    goto :goto_1

    .line 326
    :cond_0
    const-string/jumbo v1, "account_id"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 327
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    move-object v0, v2

    goto :goto_2

    .line 329
    :cond_1
    const-string/jumbo v1, "time"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 330
    sget-object v0, Lcom/dropbox/core/v2/teamcommon/TimeRange$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamcommon/TimeRange$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullableStruct(Lcom/dropbox/core/stone/StructSerializer;)Lcom/dropbox/core/stone/StructSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StructSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/teamcommon/TimeRange;

    move-object v5, v0

    move-object v0, v2

    goto :goto_2

    .line 332
    :cond_2
    const-string/jumbo v1, "category"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 333
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/EventCategory$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/teamlog/EventCategory;

    move-object v6, v0

    move-object v0, v2

    goto :goto_2

    .line 336
    :cond_3
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg$Serializer;->skipValue(Lcom/d/a/a/k;)V

    move-object v0, v2

    goto :goto_2

    .line 339
    :cond_4
    new-instance v1, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct/range {v1 .. v6}, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg;-><init>(JLjava/lang/String;Lcom/dropbox/core/v2/teamcommon/TimeRange;Lcom/dropbox/core/v2/teamlog/EventCategory;)V

    .line 344
    if-nez p2, :cond_5

    .line 345
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 347
    :cond_5
    return-object v1

    .line 342
    :cond_6
    new-instance v1, Lcom/d/a/a/j;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No subtype found that matches tag: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v1

    :cond_7
    move-object v0, v6

    goto/16 :goto_0
.end method

.method public bridge synthetic deserialize(Lcom/d/a/a/k;Z)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 280
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg;Lcom/d/a/a/g;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 285
    if-nez p3, :cond_0

    .line 286
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 288
    :cond_0
    const-string/jumbo v0, "limit"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 289
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt32()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-wide v2, p1, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg;->limit:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 290
    iget-object v0, p1, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg;->accountId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 291
    const-string/jumbo v0, "account_id"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 292
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg;->accountId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 294
    :cond_1
    iget-object v0, p1, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg;->time:Lcom/dropbox/core/v2/teamcommon/TimeRange;

    if-eqz v0, :cond_2

    .line 295
    const-string/jumbo v0, "time"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 296
    sget-object v0, Lcom/dropbox/core/v2/teamcommon/TimeRange$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamcommon/TimeRange$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullableStruct(Lcom/dropbox/core/stone/StructSerializer;)Lcom/dropbox/core/stone/StructSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg;->time:Lcom/dropbox/core/v2/teamcommon/TimeRange;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StructSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 298
    :cond_2
    iget-object v0, p1, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg;->category:Lcom/dropbox/core/v2/teamlog/EventCategory;

    if-eqz v0, :cond_3

    .line 299
    const-string/jumbo v0, "category"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 300
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/EventCategory$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg;->category:Lcom/dropbox/core/v2/teamlog/EventCategory;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 302
    :cond_3
    if-nez p3, :cond_4

    .line 303
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 305
    :cond_4
    return-void
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/d/a/a/g;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 280
    check-cast p1, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg;Lcom/d/a/a/g;Z)V

    return-void
.end method
