.class Lcom/dropbox/core/v2/team/GroupMembersAddArg$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "GroupMembersAddArg.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/GroupMembersAddArg;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/GroupMembersAddArg$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 154
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMembersAddArg$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupMembersAddArg$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/GroupMembersAddArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupMembersAddArg$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/team/GroupMembersAddArg;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 175
    .line 176
    if-nez p2, :cond_8

    .line 177
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GroupMembersAddArg$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 178
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GroupMembersAddArg$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 180
    :goto_0
    if-nez v0, :cond_7

    .line 183
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object v3, v2

    .line 184
    :goto_1
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v4, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v0, v4, :cond_3

    .line 185
    invoke-virtual {p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v0

    .line 186
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 187
    const-string/jumbo v4, "group"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 188
    sget-object v0, Lcom/dropbox/core/v2/team/GroupSelector$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupSelector$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/team/GroupSelector$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/team/GroupSelector;

    move-result-object v0

    move-object v5, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v5

    :goto_2
    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    .line 199
    goto :goto_1

    .line 190
    :cond_0
    const-string/jumbo v4, "members"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 191
    sget-object v0, Lcom/dropbox/core/v2/team/MemberAccess$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MemberAccess$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v2, v3

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_2

    .line 193
    :cond_1
    const-string/jumbo v4, "return_members"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 194
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    move-object v1, v2

    move-object v2, v3

    goto :goto_2

    .line 197
    :cond_2
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GroupMembersAddArg$Serializer;->skipValue(Lcom/d/a/a/k;)V

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_2

    .line 200
    :cond_3
    if-nez v3, :cond_4

    .line 201
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"group\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_4
    if-nez v2, :cond_5

    .line 204
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"members\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_5
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMembersAddArg;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {v0, v3, v2, v1}, Lcom/dropbox/core/v2/team/GroupMembersAddArg;-><init>(Lcom/dropbox/core/v2/team/GroupSelector;Ljava/util/List;Z)V

    .line 211
    if-nez p2, :cond_6

    .line 212
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GroupMembersAddArg$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 214
    :cond_6
    return-object v0

    .line 209
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
    move-object v0, v2

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
    .line 153
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/GroupMembersAddArg$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/team/GroupMembersAddArg;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/GroupMembersAddArg;Lcom/d/a/a/g;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 158
    if-nez p3, :cond_0

    .line 159
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 161
    :cond_0
    const-string/jumbo v0, "group"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 162
    sget-object v0, Lcom/dropbox/core/v2/team/GroupSelector$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupSelector$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/team/GroupMembersAddArg;->group:Lcom/dropbox/core/v2/team/GroupSelector;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/team/GroupSelector$Serializer;->serialize(Lcom/dropbox/core/v2/team/GroupSelector;Lcom/d/a/a/g;)V

    .line 163
    const-string/jumbo v0, "members"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 164
    sget-object v0, Lcom/dropbox/core/v2/team/MemberAccess$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MemberAccess$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/GroupMembersAddArg;->members:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 165
    const-string/jumbo v0, "return_members"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 166
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-boolean v1, p1, Lcom/dropbox/core/v2/team/GroupMembersAddArg;->returnMembers:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 167
    if-nez p3, :cond_1

    .line 168
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 170
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
    .line 153
    check-cast p1, Lcom/dropbox/core/v2/team/GroupMembersAddArg;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/team/GroupMembersAddArg$Serializer;->serialize(Lcom/dropbox/core/v2/team/GroupMembersAddArg;Lcom/d/a/a/g;Z)V

    return-void
.end method
