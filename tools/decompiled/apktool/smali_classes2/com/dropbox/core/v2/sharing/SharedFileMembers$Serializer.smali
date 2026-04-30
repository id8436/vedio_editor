.class Lcom/dropbox/core/v2/sharing/SharedFileMembers$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "SharedFileMembers.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/SharedFileMembers;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFileMembers$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 205
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharedFileMembers$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/SharedFileMembers$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharedFileMembers$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFileMembers$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/sharing/SharedFileMembers;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 230
    .line 231
    if-nez p2, :cond_a

    .line 232
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharedFileMembers$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 233
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharedFileMembers$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 235
    :goto_0
    if-nez v0, :cond_9

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    .line 240
    :goto_1
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v5, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v0, v5, :cond_4

    .line 241
    invoke-virtual {p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v0

    .line 242
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 243
    const-string/jumbo v5, "users"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 244
    sget-object v0, Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v6, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v0

    move-object v0, v6

    :goto_2
    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    .line 258
    goto :goto_1

    .line 246
    :cond_0
    const-string/jumbo v5, "groups"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 247
    sget-object v0, Lcom/dropbox/core/v2/sharing/GroupMembershipInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/GroupMembershipInfo$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v3, v4

    move-object v6, v2

    move-object v2, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_2

    .line 249
    :cond_1
    const-string/jumbo v5, "invitees"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 250
    sget-object v0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v2, v3

    move-object v3, v4

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_2

    .line 252
    :cond_2
    const-string/jumbo v5, "cursor"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 253
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    goto :goto_2

    .line 256
    :cond_3
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharedFileMembers$Serializer;->skipValue(Lcom/d/a/a/k;)V

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    goto :goto_2

    .line 259
    :cond_4
    if-nez v4, :cond_5

    .line 260
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"users\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_5
    if-nez v3, :cond_6

    .line 263
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"groups\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_6
    if-nez v2, :cond_7

    .line 266
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"invitees\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_7
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharedFileMembers;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/dropbox/core/v2/sharing/SharedFileMembers;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 273
    if-nez p2, :cond_8

    .line 274
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharedFileMembers$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 276
    :cond_8
    return-object v0

    .line 271
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
    .line 204
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/SharedFileMembers$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/sharing/SharedFileMembers;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/SharedFileMembers;Lcom/d/a/a/g;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 209
    if-nez p3, :cond_0

    .line 210
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 212
    :cond_0
    const-string/jumbo v0, "users"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 213
    sget-object v0, Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/SharedFileMembers;->users:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 214
    const-string/jumbo v0, "groups"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 215
    sget-object v0, Lcom/dropbox/core/v2/sharing/GroupMembershipInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/GroupMembershipInfo$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/SharedFileMembers;->groups:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 216
    const-string/jumbo v0, "invitees"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 217
    sget-object v0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/SharedFileMembers;->invitees:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 218
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/SharedFileMembers;->cursor:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 219
    const-string/jumbo v0, "cursor"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 220
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/SharedFileMembers;->cursor:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 222
    :cond_1
    if-nez p3, :cond_2

    .line 223
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 225
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
    .line 204
    check-cast p1, Lcom/dropbox/core/v2/sharing/SharedFileMembers;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/sharing/SharedFileMembers$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/SharedFileMembers;Lcom/d/a/a/g;Z)V

    return-void
.end method
