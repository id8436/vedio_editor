.class Lcom/dropbox/core/v2/teamlog/MemberChangeMembershipTypeDetails$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "MemberChangeMembershipTypeDetails.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/teamlog/MemberChangeMembershipTypeDetails;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/teamlog/MemberChangeMembershipTypeDetails$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 115
    new-instance v0, Lcom/dropbox/core/v2/teamlog/MemberChangeMembershipTypeDetails$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/MemberChangeMembershipTypeDetails$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/MemberChangeMembershipTypeDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/MemberChangeMembershipTypeDetails$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/MemberChangeMembershipTypeDetails;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 134
    .line 135
    if-nez p2, :cond_7

    .line 136
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/MemberChangeMembershipTypeDetails$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 137
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/MemberChangeMembershipTypeDetails$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v1

    .line 139
    :goto_0
    if-nez v1, :cond_6

    move-object v1, v0

    .line 142
    :goto_1
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v2

    sget-object v3, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v2, v3, :cond_2

    .line 143
    invoke-virtual {p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v2

    .line 144
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 145
    const-string/jumbo v3, "prev_value"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 146
    sget-object v1, Lcom/dropbox/core/v2/teamlog/TeamMembershipType$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/TeamMembershipType$Serializer;

    invoke-virtual {v1, p1}, Lcom/dropbox/core/v2/teamlog/TeamMembershipType$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/teamlog/TeamMembershipType;

    move-result-object v1

    goto :goto_1

    .line 148
    :cond_0
    const-string/jumbo v3, "new_value"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 149
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamMembershipType$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/TeamMembershipType$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/teamlog/TeamMembershipType$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/teamlog/TeamMembershipType;

    move-result-object v0

    goto :goto_1

    .line 152
    :cond_1
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/MemberChangeMembershipTypeDetails$Serializer;->skipValue(Lcom/d/a/a/k;)V

    goto :goto_1

    .line 155
    :cond_2
    if-nez v1, :cond_3

    .line 156
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"prev_value\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_3
    if-nez v0, :cond_4

    .line 159
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"new_value\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_4
    new-instance v2, Lcom/dropbox/core/v2/teamlog/MemberChangeMembershipTypeDetails;

    invoke-direct {v2, v1, v0}, Lcom/dropbox/core/v2/teamlog/MemberChangeMembershipTypeDetails;-><init>(Lcom/dropbox/core/v2/teamlog/TeamMembershipType;Lcom/dropbox/core/v2/teamlog/TeamMembershipType;)V

    .line 166
    if-nez p2, :cond_5

    .line 167
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/MemberChangeMembershipTypeDetails$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 169
    :cond_5
    return-object v2

    .line 164
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
    .line 114
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/teamlog/MemberChangeMembershipTypeDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/MemberChangeMembershipTypeDetails;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/teamlog/MemberChangeMembershipTypeDetails;Lcom/d/a/a/g;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 119
    if-nez p3, :cond_0

    .line 120
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 122
    :cond_0
    const-string/jumbo v0, "prev_value"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 123
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamMembershipType$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/TeamMembershipType$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/teamlog/MemberChangeMembershipTypeDetails;->prevValue:Lcom/dropbox/core/v2/teamlog/TeamMembershipType;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/teamlog/TeamMembershipType$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/TeamMembershipType;Lcom/d/a/a/g;)V

    .line 124
    const-string/jumbo v0, "new_value"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 125
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamMembershipType$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/TeamMembershipType$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/teamlog/MemberChangeMembershipTypeDetails;->newValue:Lcom/dropbox/core/v2/teamlog/TeamMembershipType;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/teamlog/TeamMembershipType$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/TeamMembershipType;Lcom/d/a/a/g;)V

    .line 126
    if-nez p3, :cond_1

    .line 127
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 129
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
    .line 114
    check-cast p1, Lcom/dropbox/core/v2/teamlog/MemberChangeMembershipTypeDetails;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/teamlog/MemberChangeMembershipTypeDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/MemberChangeMembershipTypeDetails;Lcom/d/a/a/g;Z)V

    return-void
.end method
