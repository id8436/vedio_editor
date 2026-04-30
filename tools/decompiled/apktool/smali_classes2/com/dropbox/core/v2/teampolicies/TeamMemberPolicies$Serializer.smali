.class public Lcom/dropbox/core/v2/teampolicies/TeamMemberPolicies$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "TeamMemberPolicies.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/teampolicies/TeamMemberPolicies;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/teampolicies/TeamMemberPolicies$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 143
    new-instance v0, Lcom/dropbox/core/v2/teampolicies/TeamMemberPolicies$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teampolicies/TeamMemberPolicies$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/teampolicies/TeamMemberPolicies$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teampolicies/TeamMemberPolicies$Serializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teampolicies/TeamMemberPolicies;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 164
    .line 165
    if-nez p2, :cond_9

    .line 166
    invoke-static {p1}, Lcom/dropbox/core/v2/teampolicies/TeamMemberPolicies$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 167
    invoke-static {p1}, Lcom/dropbox/core/v2/teampolicies/TeamMemberPolicies$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 169
    :goto_0
    if-nez v0, :cond_8

    move-object v2, v1

    move-object v3, v1

    .line 173
    :goto_1
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v4, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v0, v4, :cond_3

    .line 174
    invoke-virtual {p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v0

    .line 175
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 176
    const-string/jumbo v4, "sharing"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 177
    sget-object v0, Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies$Serializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies;

    move-object v5, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v5

    :goto_2
    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    .line 188
    goto :goto_1

    .line 179
    :cond_0
    const-string/jumbo v4, "emm_state"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 180
    sget-object v0, Lcom/dropbox/core/v2/teampolicies/EmmState$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teampolicies/EmmState$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/teampolicies/EmmState$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/teampolicies/EmmState;

    move-result-object v0

    move-object v2, v3

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_2

    .line 182
    :cond_1
    const-string/jumbo v4, "office_addin"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 183
    sget-object v0, Lcom/dropbox/core/v2/teampolicies/OfficeAddInPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teampolicies/OfficeAddInPolicy$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/teampolicies/OfficeAddInPolicy$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/teampolicies/OfficeAddInPolicy;

    move-result-object v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_2

    .line 186
    :cond_2
    invoke-static {p1}, Lcom/dropbox/core/v2/teampolicies/TeamMemberPolicies$Serializer;->skipValue(Lcom/d/a/a/k;)V

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_2

    .line 189
    :cond_3
    if-nez v3, :cond_4

    .line 190
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"sharing\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_4
    if-nez v2, :cond_5

    .line 193
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"emm_state\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_5
    if-nez v1, :cond_6

    .line 196
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"office_addin\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_6
    new-instance v0, Lcom/dropbox/core/v2/teampolicies/TeamMemberPolicies;

    invoke-direct {v0, v3, v2, v1}, Lcom/dropbox/core/v2/teampolicies/TeamMemberPolicies;-><init>(Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies;Lcom/dropbox/core/v2/teampolicies/EmmState;Lcom/dropbox/core/v2/teampolicies/OfficeAddInPolicy;)V

    .line 203
    if-nez p2, :cond_7

    .line 204
    invoke-static {p1}, Lcom/dropbox/core/v2/teampolicies/TeamMemberPolicies$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 206
    :cond_7
    return-object v0

    .line 201
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
    .line 142
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/teampolicies/TeamMemberPolicies$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teampolicies/TeamMemberPolicies;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/teampolicies/TeamMemberPolicies;Lcom/d/a/a/g;Z)V
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
    const-string/jumbo v0, "sharing"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 151
    sget-object v0, Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/teampolicies/TeamMemberPolicies;->sharing:Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies$Serializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 152
    const-string/jumbo v0, "emm_state"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 153
    sget-object v0, Lcom/dropbox/core/v2/teampolicies/EmmState$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teampolicies/EmmState$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/teampolicies/TeamMemberPolicies;->emmState:Lcom/dropbox/core/v2/teampolicies/EmmState;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/teampolicies/EmmState$Serializer;->serialize(Lcom/dropbox/core/v2/teampolicies/EmmState;Lcom/d/a/a/g;)V

    .line 154
    const-string/jumbo v0, "office_addin"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 155
    sget-object v0, Lcom/dropbox/core/v2/teampolicies/OfficeAddInPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teampolicies/OfficeAddInPolicy$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/teampolicies/TeamMemberPolicies;->officeAddin:Lcom/dropbox/core/v2/teampolicies/OfficeAddInPolicy;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/teampolicies/OfficeAddInPolicy$Serializer;->serialize(Lcom/dropbox/core/v2/teampolicies/OfficeAddInPolicy;Lcom/d/a/a/g;)V

    .line 156
    if-nez p3, :cond_1

    .line 157
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 159
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
    check-cast p1, Lcom/dropbox/core/v2/teampolicies/TeamMemberPolicies;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/teampolicies/TeamMemberPolicies$Serializer;->serialize(Lcom/dropbox/core/v2/teampolicies/TeamMemberPolicies;Lcom/d/a/a/g;Z)V

    return-void
.end method
