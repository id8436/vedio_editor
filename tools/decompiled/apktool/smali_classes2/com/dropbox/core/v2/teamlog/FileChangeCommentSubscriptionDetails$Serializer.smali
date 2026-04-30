.class Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "FileChangeCommentSubscriptionDetails.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 143
    new-instance v0, Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 166
    .line 167
    if-nez p2, :cond_8

    .line 168
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 169
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 171
    :goto_0
    if-nez v0, :cond_7

    move-object v2, v1

    move-object v3, v1

    .line 175
    :goto_1
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v4, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v0, v4, :cond_3

    .line 176
    invoke-virtual {p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 178
    const-string/jumbo v4, "target_asset_index"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 179
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    move-object v6, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v6

    :goto_2
    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    .line 190
    goto :goto_1

    .line 181
    :cond_0
    const-string/jumbo v4, "new_value"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 182
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileCommentNotificationPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FileCommentNotificationPolicy$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/teamlog/FileCommentNotificationPolicy$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/teamlog/FileCommentNotificationPolicy;

    move-result-object v0

    move-object v2, v3

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_2

    .line 184
    :cond_1
    const-string/jumbo v4, "previous_value"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 185
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileCommentNotificationPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FileCommentNotificationPolicy$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/teamlog/FileCommentNotificationPolicy;

    move-object v1, v2

    move-object v2, v3

    goto :goto_2

    .line 188
    :cond_2
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails$Serializer;->skipValue(Lcom/d/a/a/k;)V

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_2

    .line 191
    :cond_3
    if-nez v3, :cond_4

    .line 192
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"target_asset_index\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_4
    if-nez v2, :cond_5

    .line 195
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"new_value\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_5
    new-instance v0, Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v0, v4, v5, v2, v1}, Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails;-><init>(JLcom/dropbox/core/v2/teamlog/FileCommentNotificationPolicy;Lcom/dropbox/core/v2/teamlog/FileCommentNotificationPolicy;)V

    .line 202
    if-nez p2, :cond_6

    .line 203
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 205
    :cond_6
    return-object v0

    .line 200
    :cond_7
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

    :cond_8
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
    .line 142
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails;Lcom/d/a/a/g;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 147
    if-nez p3, :cond_0

    .line 148
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 150
    :cond_0
    const-string/jumbo v0, "target_asset_index"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 151
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-wide v2, p1, Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails;->targetAssetIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 152
    const-string/jumbo v0, "new_value"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 153
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileCommentNotificationPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FileCommentNotificationPolicy$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails;->newValue:Lcom/dropbox/core/v2/teamlog/FileCommentNotificationPolicy;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/teamlog/FileCommentNotificationPolicy$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/FileCommentNotificationPolicy;Lcom/d/a/a/g;)V

    .line 154
    iget-object v0, p1, Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/FileCommentNotificationPolicy;

    if-eqz v0, :cond_1

    .line 155
    const-string/jumbo v0, "previous_value"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 156
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileCommentNotificationPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FileCommentNotificationPolicy$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/FileCommentNotificationPolicy;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 158
    :cond_1
    if-nez p3, :cond_2

    .line 159
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 161
    :cond_2
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
    .line 142
    check-cast p1, Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails;Lcom/d/a/a/g;Z)V

    return-void
.end method
