.class Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "ListFileMembersCountResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 110
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 129
    .line 130
    if-nez p2, :cond_7

    .line 131
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 132
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 134
    :goto_0
    if-nez v0, :cond_6

    move-object v2, v1

    .line 137
    :goto_1
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v3, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v0, v3, :cond_2

    .line 138
    invoke-virtual {p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 140
    const-string/jumbo v3, "members"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 141
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedFileMembers$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFileMembers$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/SharedFileMembers$Serializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/SharedFileMembers;

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_2
    move-object v2, v1

    move-object v1, v0

    .line 149
    goto :goto_1

    .line 143
    :cond_0
    const-string/jumbo v3, "member_count"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt32()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    move-object v1, v2

    goto :goto_2

    .line 147
    :cond_1
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult$Serializer;->skipValue(Lcom/d/a/a/k;)V

    move-object v0, v1

    move-object v1, v2

    goto :goto_2

    .line 150
    :cond_2
    if-nez v2, :cond_3

    .line 151
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"members\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_3
    if-nez v1, :cond_4

    .line 154
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"member_count\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_4
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v0, v2, v4, v5}, Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;-><init>(Lcom/dropbox/core/v2/sharing/SharedFileMembers;J)V

    .line 161
    if-nez p2, :cond_5

    .line 162
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 164
    :cond_5
    return-object v0

    .line 159
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
    .line 109
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;Lcom/d/a/a/g;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 114
    if-nez p3, :cond_0

    .line 115
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 117
    :cond_0
    const-string/jumbo v0, "members"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 118
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedFileMembers$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFileMembers$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;->members:Lcom/dropbox/core/v2/sharing/SharedFileMembers;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/SharedFileMembers$Serializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 119
    const-string/jumbo v0, "member_count"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 120
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt32()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-wide v2, p1, Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;->memberCount:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 121
    if-nez p3, :cond_1

    .line 122
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 124
    :cond_1
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
    .line 109
    check-cast p1, Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;Lcom/d/a/a/g;Z)V

    return-void
.end method
