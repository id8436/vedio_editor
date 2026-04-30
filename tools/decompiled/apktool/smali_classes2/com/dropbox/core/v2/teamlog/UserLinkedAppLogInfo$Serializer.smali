.class Lcom/dropbox/core/v2/teamlog/UserLinkedAppLogInfo$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "UserLinkedAppLogInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/teamlog/UserLinkedAppLogInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/teamlog/UserLinkedAppLogInfo$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 166
    new-instance v0, Lcom/dropbox/core/v2/teamlog/UserLinkedAppLogInfo$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/UserLinkedAppLogInfo$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/UserLinkedAppLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/UserLinkedAppLogInfo$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/UserLinkedAppLogInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 190
    .line 191
    if-nez p2, :cond_6

    .line 192
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/UserLinkedAppLogInfo$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 193
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/UserLinkedAppLogInfo$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 194
    const-string/jumbo v2, "user_linked_app"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 198
    :cond_0
    :goto_0
    if-nez v0, :cond_5

    move-object v2, v1

    .line 201
    :goto_1
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v3, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v0, v3, :cond_3

    .line 202
    invoke-virtual {p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v0

    .line 203
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 204
    const-string/jumbo v3, "app_id"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 205
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

    .line 213
    goto :goto_1

    .line 207
    :cond_1
    const-string/jumbo v3, "display_name"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 208
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v2

    goto :goto_2

    .line 211
    :cond_2
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/UserLinkedAppLogInfo$Serializer;->skipValue(Lcom/d/a/a/k;)V

    move-object v0, v1

    move-object v1, v2

    goto :goto_2

    .line 214
    :cond_3
    new-instance v0, Lcom/dropbox/core/v2/teamlog/UserLinkedAppLogInfo;

    invoke-direct {v0, v2, v1}, Lcom/dropbox/core/v2/teamlog/UserLinkedAppLogInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    if-nez p2, :cond_4

    .line 220
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/UserLinkedAppLogInfo$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 222
    :cond_4
    return-object v0

    .line 217
    :cond_5
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

    :cond_6
    move-object v0, v1

    goto :goto_0
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
    .line 165
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/teamlog/UserLinkedAppLogInfo$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/UserLinkedAppLogInfo;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/teamlog/UserLinkedAppLogInfo;Lcom/d/a/a/g;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 170
    if-nez p3, :cond_0

    .line 171
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 173
    :cond_0
    const-string/jumbo v0, "user_linked_app"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/UserLinkedAppLogInfo$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 174
    iget-object v0, p1, Lcom/dropbox/core/v2/teamlog/UserLinkedAppLogInfo;->appId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 175
    const-string/jumbo v0, "app_id"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 176
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/teamlog/UserLinkedAppLogInfo;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 178
    :cond_1
    iget-object v0, p1, Lcom/dropbox/core/v2/teamlog/UserLinkedAppLogInfo;->displayName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 179
    const-string/jumbo v0, "display_name"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 180
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/teamlog/UserLinkedAppLogInfo;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 182
    :cond_2
    if-nez p3, :cond_3

    .line 183
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 185
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
    .line 165
    check-cast p1, Lcom/dropbox/core/v2/teamlog/UserLinkedAppLogInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/teamlog/UserLinkedAppLogInfo$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/UserLinkedAppLogInfo;Lcom/d/a/a/g;Z)V

    return-void
.end method
