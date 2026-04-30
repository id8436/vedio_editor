.class Lcom/dropbox/core/v2/paper/AddMember$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "AddMember.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/paper/AddMember;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/paper/AddMember$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 131
    new-instance v0, Lcom/dropbox/core/v2/paper/AddMember$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/paper/AddMember$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/paper/AddMember$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/AddMember$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/paper/AddMember;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 150
    .line 151
    if-nez p2, :cond_6

    .line 152
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/AddMember$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 153
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/AddMember$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 155
    :goto_0
    if-nez v0, :cond_5

    .line 157
    sget-object v0, Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;->EDIT:Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;

    .line 158
    :goto_1
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v2

    sget-object v3, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v2, v3, :cond_2

    .line 159
    invoke-virtual {p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v2

    .line 160
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 161
    const-string/jumbo v3, "member"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 162
    sget-object v1, Lcom/dropbox/core/v2/sharing/MemberSelector$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/MemberSelector$Serializer;

    invoke-virtual {v1, p1}, Lcom/dropbox/core/v2/sharing/MemberSelector$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/MemberSelector;

    move-result-object v1

    goto :goto_1

    .line 164
    :cond_0
    const-string/jumbo v3, "permission_level"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 165
    sget-object v0, Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;

    move-result-object v0

    goto :goto_1

    .line 168
    :cond_1
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/AddMember$Serializer;->skipValue(Lcom/d/a/a/k;)V

    goto :goto_1

    .line 171
    :cond_2
    if-nez v1, :cond_3

    .line 172
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"member\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_3
    new-instance v2, Lcom/dropbox/core/v2/paper/AddMember;

    invoke-direct {v2, v1, v0}, Lcom/dropbox/core/v2/paper/AddMember;-><init>(Lcom/dropbox/core/v2/sharing/MemberSelector;Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;)V

    .line 179
    if-nez p2, :cond_4

    .line 180
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/AddMember$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 182
    :cond_4
    return-object v2

    .line 177
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
    .line 130
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/paper/AddMember$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/paper/AddMember;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/paper/AddMember;Lcom/d/a/a/g;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 135
    if-nez p3, :cond_0

    .line 136
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 138
    :cond_0
    const-string/jumbo v0, "member"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 139
    sget-object v0, Lcom/dropbox/core/v2/sharing/MemberSelector$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/MemberSelector$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/paper/AddMember;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/MemberSelector$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/MemberSelector;Lcom/d/a/a/g;)V

    .line 140
    const-string/jumbo v0, "permission_level"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 141
    sget-object v0, Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/paper/AddMember;->permissionLevel:Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel$Serializer;->serialize(Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;Lcom/d/a/a/g;)V

    .line 142
    if-nez p3, :cond_1

    .line 143
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 145
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
    .line 130
    check-cast p1, Lcom/dropbox/core/v2/paper/AddMember;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/paper/AddMember$Serializer;->serialize(Lcom/dropbox/core/v2/paper/AddMember;Lcom/d/a/a/g;Z)V

    return-void
.end method
