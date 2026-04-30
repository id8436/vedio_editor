.class public Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "TeamSharingPolicies.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 135
    new-instance v0, Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies$Serializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 156
    .line 157
    if-nez p2, :cond_9

    .line 158
    invoke-static {p1}, Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 159
    invoke-static {p1}, Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v1

    .line 161
    :goto_0
    if-nez v1, :cond_8

    move-object v1, v0

    move-object v2, v0

    .line 165
    :goto_1
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v3

    sget-object v4, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v3, v4, :cond_3

    .line 166
    invoke-virtual {p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v3

    .line 167
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 168
    const-string/jumbo v4, "shared_folder_member_policy"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 169
    sget-object v2, Lcom/dropbox/core/v2/teampolicies/SharedFolderMemberPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teampolicies/SharedFolderMemberPolicy$Serializer;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/teampolicies/SharedFolderMemberPolicy$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/teampolicies/SharedFolderMemberPolicy;

    move-result-object v2

    goto :goto_1

    .line 171
    :cond_0
    const-string/jumbo v4, "shared_folder_join_policy"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 172
    sget-object v1, Lcom/dropbox/core/v2/teampolicies/SharedFolderJoinPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teampolicies/SharedFolderJoinPolicy$Serializer;

    invoke-virtual {v1, p1}, Lcom/dropbox/core/v2/teampolicies/SharedFolderJoinPolicy$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/teampolicies/SharedFolderJoinPolicy;

    move-result-object v1

    goto :goto_1

    .line 174
    :cond_1
    const-string/jumbo v4, "shared_link_create_policy"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 175
    sget-object v0, Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;

    move-result-object v0

    goto :goto_1

    .line 178
    :cond_2
    invoke-static {p1}, Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies$Serializer;->skipValue(Lcom/d/a/a/k;)V

    goto :goto_1

    .line 181
    :cond_3
    if-nez v2, :cond_4

    .line 182
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"shared_folder_member_policy\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_4
    if-nez v1, :cond_5

    .line 185
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"shared_folder_join_policy\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_5
    if-nez v0, :cond_6

    .line 188
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"shared_link_create_policy\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_6
    new-instance v3, Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies;

    invoke-direct {v3, v2, v1, v0}, Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies;-><init>(Lcom/dropbox/core/v2/teampolicies/SharedFolderMemberPolicy;Lcom/dropbox/core/v2/teampolicies/SharedFolderJoinPolicy;Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;)V

    .line 195
    if-nez p2, :cond_7

    .line 196
    invoke-static {p1}, Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 198
    :cond_7
    return-object v3

    .line 193
    :cond_8
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

    :cond_9
    move-object v1, v0

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
    .line 134
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies;Lcom/d/a/a/g;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 139
    if-nez p3, :cond_0

    .line 140
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 142
    :cond_0
    const-string/jumbo v0, "shared_folder_member_policy"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 143
    sget-object v0, Lcom/dropbox/core/v2/teampolicies/SharedFolderMemberPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teampolicies/SharedFolderMemberPolicy$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies;->sharedFolderMemberPolicy:Lcom/dropbox/core/v2/teampolicies/SharedFolderMemberPolicy;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/teampolicies/SharedFolderMemberPolicy$Serializer;->serialize(Lcom/dropbox/core/v2/teampolicies/SharedFolderMemberPolicy;Lcom/d/a/a/g;)V

    .line 144
    const-string/jumbo v0, "shared_folder_join_policy"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 145
    sget-object v0, Lcom/dropbox/core/v2/teampolicies/SharedFolderJoinPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teampolicies/SharedFolderJoinPolicy$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies;->sharedFolderJoinPolicy:Lcom/dropbox/core/v2/teampolicies/SharedFolderJoinPolicy;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/teampolicies/SharedFolderJoinPolicy$Serializer;->serialize(Lcom/dropbox/core/v2/teampolicies/SharedFolderJoinPolicy;Lcom/d/a/a/g;)V

    .line 146
    const-string/jumbo v0, "shared_link_create_policy"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 147
    sget-object v0, Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies;->sharedLinkCreatePolicy:Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy$Serializer;->serialize(Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;Lcom/d/a/a/g;)V

    .line 148
    if-nez p3, :cond_1

    .line 149
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 151
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
    .line 134
    check-cast p1, Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies$Serializer;->serialize(Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies;Lcom/d/a/a/g;Z)V

    return-void
.end method
