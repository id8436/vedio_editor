.class Lcom/dropbox/core/v2/teamlog/AppLogInfo$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "AppLogInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/teamlog/AppLogInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/teamlog/AppLogInfo$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 178
    new-instance v0, Lcom/dropbox/core/v2/teamlog/AppLogInfo$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/AppLogInfo$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/AppLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/AppLogInfo$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/AppLogInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 213
    .line 214
    if-nez p2, :cond_a

    .line 215
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/AppLogInfo$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 216
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/AppLogInfo$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 217
    const-string/jumbo v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 221
    :cond_0
    :goto_0
    if-nez v0, :cond_5

    move-object v2, v1

    .line 224
    :goto_1
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v3, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v0, v3, :cond_3

    .line 225
    invoke-virtual {p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v0

    .line 226
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 227
    const-string/jumbo v3, "app_id"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 228
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_2
    move-object v2, v1

    move-object v1, v0

    .line 236
    goto :goto_1

    .line 230
    :cond_1
    const-string/jumbo v3, "display_name"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 231
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v2

    goto :goto_2

    .line 234
    :cond_2
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/AppLogInfo$Serializer;->skipValue(Lcom/d/a/a/k;)V

    move-object v0, v1

    move-object v1, v2

    goto :goto_2

    .line 237
    :cond_3
    new-instance v0, Lcom/dropbox/core/v2/teamlog/AppLogInfo;

    invoke-direct {v0, v2, v1}, Lcom/dropbox/core/v2/teamlog/AppLogInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :goto_3
    if-nez p2, :cond_4

    .line 255
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/AppLogInfo$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 257
    :cond_4
    return-object v0

    .line 239
    :cond_5
    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 240
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AppLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/AppLogInfo$Serializer;

    invoke-virtual {v0, p1, v3}, Lcom/dropbox/core/v2/teamlog/AppLogInfo$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/AppLogInfo;

    move-result-object v0

    goto :goto_3

    .line 242
    :cond_6
    const-string/jumbo v1, "user_or_team_linked_app"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 243
    sget-object v0, Lcom/dropbox/core/v2/teamlog/UserOrTeamLinkedAppLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/UserOrTeamLinkedAppLogInfo$Serializer;

    invoke-virtual {v0, p1, v3}, Lcom/dropbox/core/v2/teamlog/UserOrTeamLinkedAppLogInfo$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/UserOrTeamLinkedAppLogInfo;

    move-result-object v0

    goto :goto_3

    .line 245
    :cond_7
    const-string/jumbo v1, "user_linked_app"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 246
    sget-object v0, Lcom/dropbox/core/v2/teamlog/UserLinkedAppLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/UserLinkedAppLogInfo$Serializer;

    invoke-virtual {v0, p1, v3}, Lcom/dropbox/core/v2/teamlog/UserLinkedAppLogInfo$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/UserLinkedAppLogInfo;

    move-result-object v0

    goto :goto_3

    .line 248
    :cond_8
    const-string/jumbo v1, "team_linked_app"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 249
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamLinkedAppLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/TeamLinkedAppLogInfo$Serializer;

    invoke-virtual {v0, p1, v3}, Lcom/dropbox/core/v2/teamlog/TeamLinkedAppLogInfo$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/TeamLinkedAppLogInfo;

    move-result-object v0

    goto :goto_3

    .line 252
    :cond_9
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

    :cond_a
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
    .line 177
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/teamlog/AppLogInfo$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/AppLogInfo;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/teamlog/AppLogInfo;Lcom/d/a/a/g;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 182
    instance-of v0, p1, Lcom/dropbox/core/v2/teamlog/UserOrTeamLinkedAppLogInfo;

    if-eqz v0, :cond_1

    .line 183
    sget-object v0, Lcom/dropbox/core/v2/teamlog/UserOrTeamLinkedAppLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/UserOrTeamLinkedAppLogInfo$Serializer;

    check-cast p1, Lcom/dropbox/core/v2/teamlog/UserOrTeamLinkedAppLogInfo;

    invoke-virtual {v0, p1, p2, p3}, Lcom/dropbox/core/v2/teamlog/UserOrTeamLinkedAppLogInfo$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/UserOrTeamLinkedAppLogInfo;Lcom/d/a/a/g;Z)V

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    instance-of v0, p1, Lcom/dropbox/core/v2/teamlog/UserLinkedAppLogInfo;

    if-eqz v0, :cond_2

    .line 187
    sget-object v0, Lcom/dropbox/core/v2/teamlog/UserLinkedAppLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/UserLinkedAppLogInfo$Serializer;

    check-cast p1, Lcom/dropbox/core/v2/teamlog/UserLinkedAppLogInfo;

    invoke-virtual {v0, p1, p2, p3}, Lcom/dropbox/core/v2/teamlog/UserLinkedAppLogInfo$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/UserLinkedAppLogInfo;Lcom/d/a/a/g;Z)V

    goto :goto_0

    .line 190
    :cond_2
    instance-of v0, p1, Lcom/dropbox/core/v2/teamlog/TeamLinkedAppLogInfo;

    if-eqz v0, :cond_3

    .line 191
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamLinkedAppLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/TeamLinkedAppLogInfo$Serializer;

    check-cast p1, Lcom/dropbox/core/v2/teamlog/TeamLinkedAppLogInfo;

    invoke-virtual {v0, p1, p2, p3}, Lcom/dropbox/core/v2/teamlog/TeamLinkedAppLogInfo$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/TeamLinkedAppLogInfo;Lcom/d/a/a/g;Z)V

    goto :goto_0

    .line 194
    :cond_3
    if-nez p3, :cond_4

    .line 195
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 197
    :cond_4
    iget-object v0, p1, Lcom/dropbox/core/v2/teamlog/AppLogInfo;->appId:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 198
    const-string/jumbo v0, "app_id"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 199
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/teamlog/AppLogInfo;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 201
    :cond_5
    iget-object v0, p1, Lcom/dropbox/core/v2/teamlog/AppLogInfo;->displayName:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 202
    const-string/jumbo v0, "display_name"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 203
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/teamlog/AppLogInfo;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 205
    :cond_6
    if-nez p3, :cond_0

    .line 206
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0
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
    .line 177
    check-cast p1, Lcom/dropbox/core/v2/teamlog/AppLogInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/teamlog/AppLogInfo$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/AppLogInfo;Lcom/d/a/a/g;Z)V

    return-void
.end method
