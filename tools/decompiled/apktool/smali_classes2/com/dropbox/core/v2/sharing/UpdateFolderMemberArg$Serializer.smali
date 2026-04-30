.class Lcom/dropbox/core/v2/sharing/UpdateFolderMemberArg$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "UpdateFolderMemberArg.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/UpdateFolderMemberArg;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberArg$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 139
    new-instance v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberArg$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberArg$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberArg$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/sharing/UpdateFolderMemberArg;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 160
    .line 161
    if-nez p2, :cond_9

    .line 162
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberArg$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 163
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberArg$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 165
    :goto_0
    if-nez v0, :cond_8

    move-object v2, v1

    move-object v3, v1

    .line 169
    :goto_1
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v4, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v0, v4, :cond_3

    .line 170
    invoke-virtual {p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 172
    const-string/jumbo v4, "shared_folder_id"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 173
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v5, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v5

    :goto_2
    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    .line 184
    goto :goto_1

    .line 175
    :cond_0
    const-string/jumbo v4, "member"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 176
    sget-object v0, Lcom/dropbox/core/v2/sharing/MemberSelector$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/MemberSelector$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/MemberSelector$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/MemberSelector;

    move-result-object v0

    move-object v2, v3

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_2

    .line 178
    :cond_1
    const-string/jumbo v4, "access_level"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 179
    sget-object v0, Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/AccessLevel;

    move-result-object v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_2

    .line 182
    :cond_2
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberArg$Serializer;->skipValue(Lcom/d/a/a/k;)V

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_2

    .line 185
    :cond_3
    if-nez v3, :cond_4

    .line 186
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"shared_folder_id\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_4
    if-nez v2, :cond_5

    .line 189
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"member\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_5
    if-nez v1, :cond_6

    .line 192
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"access_level\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_6
    new-instance v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberArg;

    invoke-direct {v0, v3, v2, v1}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberArg;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/MemberSelector;Lcom/dropbox/core/v2/sharing/AccessLevel;)V

    .line 199
    if-nez p2, :cond_7

    .line 200
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberArg$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 202
    :cond_7
    return-object v0

    .line 197
    :cond_8
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

    :cond_9
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
    .line 138
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberArg$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/sharing/UpdateFolderMemberArg;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/UpdateFolderMemberArg;Lcom/d/a/a/g;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 143
    if-nez p3, :cond_0

    .line 144
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 146
    :cond_0
    const-string/jumbo v0, "shared_folder_id"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 147
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberArg;->sharedFolderId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 148
    const-string/jumbo v0, "member"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 149
    sget-object v0, Lcom/dropbox/core/v2/sharing/MemberSelector$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/MemberSelector$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberArg;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/MemberSelector$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/MemberSelector;Lcom/d/a/a/g;)V

    .line 150
    const-string/jumbo v0, "access_level"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 151
    sget-object v0, Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberArg;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/AccessLevel;Lcom/d/a/a/g;)V

    .line 152
    if-nez p3, :cond_1

    .line 153
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 155
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
    .line 138
    check-cast p1, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberArg;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberArg$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/UpdateFolderMemberArg;Lcom/d/a/a/g;Z)V

    return-void
.end method
