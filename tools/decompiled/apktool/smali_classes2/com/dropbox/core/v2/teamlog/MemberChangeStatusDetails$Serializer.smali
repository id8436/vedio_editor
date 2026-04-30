.class Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "MemberChangeStatusDetails.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 214
    new-instance v0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 213
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 239
    .line 240
    if-nez p2, :cond_7

    .line 241
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 242
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 244
    :goto_0
    if-nez v0, :cond_6

    move-object v2, v1

    move-object v3, v1

    .line 248
    :goto_1
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v4, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v0, v4, :cond_3

    .line 249
    invoke-virtual {p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v0

    .line 250
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 251
    const-string/jumbo v4, "new_value"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 252
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/MemberStatus$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/teamlog/MemberStatus$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/teamlog/MemberStatus;

    move-result-object v0

    move-object v5, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v5

    :goto_2
    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    .line 263
    goto :goto_1

    .line 254
    :cond_0
    const-string/jumbo v4, "previous_value"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 255
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/MemberStatus$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/teamlog/MemberStatus;

    move-object v2, v3

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_2

    .line 257
    :cond_1
    const-string/jumbo v4, "team_join_details"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 258
    sget-object v0, Lcom/dropbox/core/v2/teamlog/JoinTeamDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/JoinTeamDetails$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullableStruct(Lcom/dropbox/core/stone/StructSerializer;)Lcom/dropbox/core/stone/StructSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StructSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/teamlog/JoinTeamDetails;

    move-object v1, v2

    move-object v2, v3

    goto :goto_2

    .line 261
    :cond_2
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$Serializer;->skipValue(Lcom/d/a/a/k;)V

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_2

    .line 264
    :cond_3
    if-nez v3, :cond_4

    .line 265
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"new_value\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 267
    :cond_4
    new-instance v0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;

    invoke-direct {v0, v3, v2, v1}, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;-><init>(Lcom/dropbox/core/v2/teamlog/MemberStatus;Lcom/dropbox/core/v2/teamlog/MemberStatus;Lcom/dropbox/core/v2/teamlog/JoinTeamDetails;)V

    .line 272
    if-nez p2, :cond_5

    .line 273
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 275
    :cond_5
    return-object v0

    .line 270
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
    move-object v0, v1

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
    .line 213
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;Lcom/d/a/a/g;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 218
    if-nez p3, :cond_0

    .line 219
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 221
    :cond_0
    const-string/jumbo v0, "new_value"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 222
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/MemberStatus$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;->newValue:Lcom/dropbox/core/v2/teamlog/MemberStatus;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/teamlog/MemberStatus$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/MemberStatus;Lcom/d/a/a/g;)V

    .line 223
    iget-object v0, p1, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/MemberStatus;

    if-eqz v0, :cond_1

    .line 224
    const-string/jumbo v0, "previous_value"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 225
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/MemberStatus$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/MemberStatus;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 227
    :cond_1
    iget-object v0, p1, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;->teamJoinDetails:Lcom/dropbox/core/v2/teamlog/JoinTeamDetails;

    if-eqz v0, :cond_2

    .line 228
    const-string/jumbo v0, "team_join_details"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 229
    sget-object v0, Lcom/dropbox/core/v2/teamlog/JoinTeamDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/JoinTeamDetails$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullableStruct(Lcom/dropbox/core/stone/StructSerializer;)Lcom/dropbox/core/stone/StructSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;->teamJoinDetails:Lcom/dropbox/core/v2/teamlog/JoinTeamDetails;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StructSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 231
    :cond_2
    if-nez p3, :cond_3

    .line 232
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 234
    :cond_3
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
    .line 213
    check-cast p1, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;Lcom/d/a/a/g;Z)V

    return-void
.end method
