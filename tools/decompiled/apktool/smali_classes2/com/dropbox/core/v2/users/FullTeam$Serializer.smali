.class Lcom/dropbox/core/v2/users/FullTeam$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "FullTeam.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/users/FullTeam;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/users/FullTeam$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 143
    new-instance v0, Lcom/dropbox/core/v2/users/FullTeam$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/users/FullTeam$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/users/FullTeam$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/FullTeam$Serializer;

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
.method public deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/users/FullTeam;
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
    if-nez p2, :cond_b

    .line 168
    invoke-static {p1}, Lcom/dropbox/core/v2/users/FullTeam$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 169
    invoke-static {p1}, Lcom/dropbox/core/v2/users/FullTeam$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 171
    :goto_0
    if-nez v0, :cond_a

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    .line 176
    :goto_1
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v5, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v0, v5, :cond_4

    .line 177
    invoke-virtual {p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 179
    const-string/jumbo v5, "id"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 180
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

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

    .line 194
    goto :goto_1

    .line 182
    :cond_0
    const-string/jumbo v5, "name"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 183
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v3, v4

    move-object v6, v2

    move-object v2, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_2

    .line 185
    :cond_1
    const-string/jumbo v5, "sharing_policies"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 186
    sget-object v0, Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies$Serializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies;

    move-object v2, v3

    move-object v3, v4

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_2

    .line 188
    :cond_2
    const-string/jumbo v5, "office_addin_policy"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 189
    sget-object v0, Lcom/dropbox/core/v2/teampolicies/OfficeAddInPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teampolicies/OfficeAddInPolicy$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/teampolicies/OfficeAddInPolicy$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/teampolicies/OfficeAddInPolicy;

    move-result-object v0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    goto :goto_2

    .line 192
    :cond_3
    invoke-static {p1}, Lcom/dropbox/core/v2/users/FullTeam$Serializer;->skipValue(Lcom/d/a/a/k;)V

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    goto :goto_2

    .line 195
    :cond_4
    if-nez v4, :cond_5

    .line 196
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"id\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_5
    if-nez v3, :cond_6

    .line 199
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"name\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_6
    if-nez v2, :cond_7

    .line 202
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"sharing_policies\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_7
    if-nez v1, :cond_8

    .line 205
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"office_addin_policy\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_8
    new-instance v0, Lcom/dropbox/core/v2/users/FullTeam;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/dropbox/core/v2/users/FullTeam;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies;Lcom/dropbox/core/v2/teampolicies/OfficeAddInPolicy;)V

    .line 212
    if-nez p2, :cond_9

    .line 213
    invoke-static {p1}, Lcom/dropbox/core/v2/users/FullTeam$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 215
    :cond_9
    return-object v0

    .line 210
    :cond_a
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

    :cond_b
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
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/users/FullTeam$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/users/FullTeam;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/users/FullTeam;Lcom/d/a/a/g;Z)V
    .locals 2
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
    const-string/jumbo v0, "id"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 151
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/users/FullTeam;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 152
    const-string/jumbo v0, "name"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 153
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/users/FullTeam;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 154
    const-string/jumbo v0, "sharing_policies"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 155
    sget-object v0, Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/users/FullTeam;->sharingPolicies:Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies$Serializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 156
    const-string/jumbo v0, "office_addin_policy"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 157
    sget-object v0, Lcom/dropbox/core/v2/teampolicies/OfficeAddInPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teampolicies/OfficeAddInPolicy$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/users/FullTeam;->officeAddinPolicy:Lcom/dropbox/core/v2/teampolicies/OfficeAddInPolicy;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/teampolicies/OfficeAddInPolicy$Serializer;->serialize(Lcom/dropbox/core/v2/teampolicies/OfficeAddInPolicy;Lcom/d/a/a/g;)V

    .line 158
    if-nez p3, :cond_1

    .line 159
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 161
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
    .line 142
    check-cast p1, Lcom/dropbox/core/v2/users/FullTeam;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/users/FullTeam$Serializer;->serialize(Lcom/dropbox/core/v2/users/FullTeam;Lcom/d/a/a/g;Z)V

    return-void
.end method
