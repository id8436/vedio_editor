.class Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "InviteeInfoWithPermissionLevel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 114
    new-instance v0, Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 133
    .line 134
    if-nez p2, :cond_7

    .line 135
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 136
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v1

    .line 138
    :goto_0
    if-nez v1, :cond_6

    move-object v1, v0

    .line 141
    :goto_1
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v2

    sget-object v3, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v2, v3, :cond_2

    .line 142
    invoke-virtual {p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v2

    .line 143
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 144
    const-string/jumbo v3, "invitee"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 145
    sget-object v1, Lcom/dropbox/core/v2/sharing/InviteeInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/InviteeInfo$Serializer;

    invoke-virtual {v1, p1}, Lcom/dropbox/core/v2/sharing/InviteeInfo$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/InviteeInfo;

    move-result-object v1

    goto :goto_1

    .line 147
    :cond_0
    const-string/jumbo v3, "permission_level"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 148
    sget-object v0, Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;

    move-result-object v0

    goto :goto_1

    .line 151
    :cond_1
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel$Serializer;->skipValue(Lcom/d/a/a/k;)V

    goto :goto_1

    .line 154
    :cond_2
    if-nez v1, :cond_3

    .line 155
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"invitee\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_3
    if-nez v0, :cond_4

    .line 158
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"permission_level\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_4
    new-instance v2, Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel;

    invoke-direct {v2, v1, v0}, Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel;-><init>(Lcom/dropbox/core/v2/sharing/InviteeInfo;Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;)V

    .line 165
    if-nez p2, :cond_5

    .line 166
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 168
    :cond_5
    return-object v2

    .line 163
    :cond_6
    new-instance v0, Lcom/d/a/a/j;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No subtype found that matches tag: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    :cond_7
    move-object v1, v0

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
    .line 113
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel;Lcom/d/a/a/g;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 118
    if-nez p3, :cond_0

    .line 119
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 121
    :cond_0
    const-string/jumbo v0, "invitee"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 122
    sget-object v0, Lcom/dropbox/core/v2/sharing/InviteeInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/InviteeInfo$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel;->invitee:Lcom/dropbox/core/v2/sharing/InviteeInfo;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/InviteeInfo$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/InviteeInfo;Lcom/d/a/a/g;)V

    .line 123
    const-string/jumbo v0, "permission_level"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 124
    sget-object v0, Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel;->permissionLevel:Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel$Serializer;->serialize(Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;Lcom/d/a/a/g;)V

    .line 125
    if-nez p3, :cond_1

    .line 126
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 128
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
    .line 113
    check-cast p1, Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel$Serializer;->serialize(Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel;Lcom/d/a/a/g;Z)V

    return-void
.end method
