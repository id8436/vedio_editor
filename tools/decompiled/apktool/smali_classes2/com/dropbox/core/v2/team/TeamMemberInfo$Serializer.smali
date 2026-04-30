.class Lcom/dropbox/core/v2/team/TeamMemberInfo$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "TeamMemberInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/TeamMemberInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/TeamMemberInfo$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 116
    new-instance v0, Lcom/dropbox/core/v2/team/TeamMemberInfo$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamMemberInfo$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/TeamMemberInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamMemberInfo$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/team/TeamMemberInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 135
    .line 136
    if-nez p2, :cond_7

    .line 137
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamMemberInfo$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 138
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamMemberInfo$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 140
    :goto_0
    if-nez v0, :cond_6

    move-object v2, v1

    .line 143
    :goto_1
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v3, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v0, v3, :cond_2

    .line 144
    invoke-virtual {p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 146
    const-string/jumbo v3, "profile"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 147
    sget-object v0, Lcom/dropbox/core/v2/team/TeamMemberProfile$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamMemberProfile$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/team/TeamMemberProfile$Serializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/TeamMemberProfile;

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_2
    move-object v2, v1

    move-object v1, v0

    .line 155
    goto :goto_1

    .line 149
    :cond_0
    const-string/jumbo v3, "role"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    sget-object v0, Lcom/dropbox/core/v2/team/AdminTier$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/AdminTier$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/team/AdminTier$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/team/AdminTier;

    move-result-object v0

    move-object v1, v2

    goto :goto_2

    .line 153
    :cond_1
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamMemberInfo$Serializer;->skipValue(Lcom/d/a/a/k;)V

    move-object v0, v1

    move-object v1, v2

    goto :goto_2

    .line 156
    :cond_2
    if-nez v2, :cond_3

    .line 157
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"profile\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_3
    if-nez v1, :cond_4

    .line 160
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"role\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_4
    new-instance v0, Lcom/dropbox/core/v2/team/TeamMemberInfo;

    invoke-direct {v0, v2, v1}, Lcom/dropbox/core/v2/team/TeamMemberInfo;-><init>(Lcom/dropbox/core/v2/team/TeamMemberProfile;Lcom/dropbox/core/v2/team/AdminTier;)V

    .line 167
    if-nez p2, :cond_5

    .line 168
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamMemberInfo$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 170
    :cond_5
    return-object v0

    .line 165
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
    .line 115
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/TeamMemberInfo$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/team/TeamMemberInfo;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/TeamMemberInfo;Lcom/d/a/a/g;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 120
    if-nez p3, :cond_0

    .line 121
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 123
    :cond_0
    const-string/jumbo v0, "profile"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 124
    sget-object v0, Lcom/dropbox/core/v2/team/TeamMemberProfile$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamMemberProfile$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/team/TeamMemberInfo;->profile:Lcom/dropbox/core/v2/team/TeamMemberProfile;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/team/TeamMemberProfile$Serializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 125
    const-string/jumbo v0, "role"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 126
    sget-object v0, Lcom/dropbox/core/v2/team/AdminTier$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/AdminTier$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/team/TeamMemberInfo;->role:Lcom/dropbox/core/v2/team/AdminTier;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/team/AdminTier$Serializer;->serialize(Lcom/dropbox/core/v2/team/AdminTier;Lcom/d/a/a/g;)V

    .line 127
    if-nez p3, :cond_1

    .line 128
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 130
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
    .line 115
    check-cast p1, Lcom/dropbox/core/v2/team/TeamMemberInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/team/TeamMemberInfo$Serializer;->serialize(Lcom/dropbox/core/v2/team/TeamMemberInfo;Lcom/d/a/a/g;Z)V

    return-void
.end method
