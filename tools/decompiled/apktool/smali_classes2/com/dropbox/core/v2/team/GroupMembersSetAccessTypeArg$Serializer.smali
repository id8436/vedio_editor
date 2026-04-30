.class Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "GroupMembersSetAccessTypeArg.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 163
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 186
    .line 187
    if-nez p2, :cond_a

    .line 188
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 189
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 191
    :goto_0
    if-nez v0, :cond_9

    .line 195
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    move-object v2, v1

    move-object v3, v1

    .line 196
    :goto_1
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v4

    sget-object v5, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v4, v5, :cond_4

    .line 197
    invoke-virtual {p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v4

    .line 198
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 199
    const-string/jumbo v5, "group"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 200
    sget-object v3, Lcom/dropbox/core/v2/team/GroupSelector$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupSelector$Serializer;

    invoke-virtual {v3, p1}, Lcom/dropbox/core/v2/team/GroupSelector$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/team/GroupSelector;

    move-result-object v3

    goto :goto_1

    .line 202
    :cond_0
    const-string/jumbo v5, "user"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 203
    sget-object v2, Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/team/UserSelectorArg;

    move-result-object v2

    goto :goto_1

    .line 205
    :cond_1
    const-string/jumbo v5, "access_type"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 206
    sget-object v1, Lcom/dropbox/core/v2/team/GroupAccessType$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupAccessType$Serializer;

    invoke-virtual {v1, p1}, Lcom/dropbox/core/v2/team/GroupAccessType$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/team/GroupAccessType;

    move-result-object v1

    goto :goto_1

    .line 208
    :cond_2
    const-string/jumbo v5, "return_members"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 209
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    goto :goto_1

    .line 212
    :cond_3
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg$Serializer;->skipValue(Lcom/d/a/a/k;)V

    goto :goto_1

    .line 215
    :cond_4
    if-nez v3, :cond_5

    .line 216
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"group\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_5
    if-nez v2, :cond_6

    .line 219
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"user\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_6
    if-nez v1, :cond_7

    .line 222
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"access_type\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_7
    new-instance v4, Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {v4, v3, v2, v1, v0}, Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg;-><init>(Lcom/dropbox/core/v2/team/GroupSelector;Lcom/dropbox/core/v2/team/UserSelectorArg;Lcom/dropbox/core/v2/team/GroupAccessType;Z)V

    .line 229
    if-nez p2, :cond_8

    .line 230
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 232
    :cond_8
    return-object v4

    .line 227
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
    .line 162
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg;Lcom/d/a/a/g;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 167
    if-nez p3, :cond_0

    .line 168
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 170
    :cond_0
    const-string/jumbo v0, "group"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 171
    sget-object v0, Lcom/dropbox/core/v2/team/GroupSelector$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupSelector$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg;->group:Lcom/dropbox/core/v2/team/GroupSelector;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/team/GroupSelector$Serializer;->serialize(Lcom/dropbox/core/v2/team/GroupSelector;Lcom/d/a/a/g;)V

    .line 172
    const-string/jumbo v0, "user"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 173
    sget-object v0, Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg;->user:Lcom/dropbox/core/v2/team/UserSelectorArg;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;->serialize(Lcom/dropbox/core/v2/team/UserSelectorArg;Lcom/d/a/a/g;)V

    .line 174
    const-string/jumbo v0, "access_type"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 175
    sget-object v0, Lcom/dropbox/core/v2/team/GroupAccessType$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupAccessType$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg;->accessType:Lcom/dropbox/core/v2/team/GroupAccessType;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/team/GroupAccessType$Serializer;->serialize(Lcom/dropbox/core/v2/team/GroupAccessType;Lcom/d/a/a/g;)V

    .line 176
    const-string/jumbo v0, "return_members"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 177
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-boolean v1, p1, Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg;->returnMembers:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 178
    if-nez p3, :cond_1

    .line 179
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 181
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
    .line 162
    check-cast p1, Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg$Serializer;->serialize(Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg;Lcom/d/a/a/g;Z)V

    return-void
.end method
