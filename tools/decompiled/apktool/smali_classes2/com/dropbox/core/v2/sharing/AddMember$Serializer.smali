.class Lcom/dropbox/core/v2/sharing/AddMember$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "AddMember.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/AddMember;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/AddMember$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 138
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddMember$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/AddMember$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/AddMember$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/AddMember$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/sharing/AddMember;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 157
    .line 158
    if-nez p2, :cond_6

    .line 159
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/AddMember$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 160
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/AddMember$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 162
    :goto_0
    if-nez v0, :cond_5

    .line 164
    sget-object v0, Lcom/dropbox/core/v2/sharing/AccessLevel;->VIEWER:Lcom/dropbox/core/v2/sharing/AccessLevel;

    .line 165
    :goto_1
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v2

    sget-object v3, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v2, v3, :cond_2

    .line 166
    invoke-virtual {p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v2

    .line 167
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 168
    const-string/jumbo v3, "member"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 169
    sget-object v1, Lcom/dropbox/core/v2/sharing/MemberSelector$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/MemberSelector$Serializer;

    invoke-virtual {v1, p1}, Lcom/dropbox/core/v2/sharing/MemberSelector$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/MemberSelector;

    move-result-object v1

    goto :goto_1

    .line 171
    :cond_0
    const-string/jumbo v3, "access_level"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 172
    sget-object v0, Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/AccessLevel;

    move-result-object v0

    goto :goto_1

    .line 175
    :cond_1
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/AddMember$Serializer;->skipValue(Lcom/d/a/a/k;)V

    goto :goto_1

    .line 178
    :cond_2
    if-nez v1, :cond_3

    .line 179
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"member\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_3
    new-instance v2, Lcom/dropbox/core/v2/sharing/AddMember;

    invoke-direct {v2, v1, v0}, Lcom/dropbox/core/v2/sharing/AddMember;-><init>(Lcom/dropbox/core/v2/sharing/MemberSelector;Lcom/dropbox/core/v2/sharing/AccessLevel;)V

    .line 186
    if-nez p2, :cond_4

    .line 187
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/AddMember$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 189
    :cond_4
    return-object v2

    .line 184
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
    .line 137
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/AddMember$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/sharing/AddMember;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/AddMember;Lcom/d/a/a/g;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 142
    if-nez p3, :cond_0

    .line 143
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 145
    :cond_0
    const-string/jumbo v0, "member"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 146
    sget-object v0, Lcom/dropbox/core/v2/sharing/MemberSelector$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/MemberSelector$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/AddMember;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/MemberSelector$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/MemberSelector;Lcom/d/a/a/g;)V

    .line 147
    const-string/jumbo v0, "access_level"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 148
    sget-object v0, Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/AddMember;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/AccessLevel;Lcom/d/a/a/g;)V

    .line 149
    if-nez p3, :cond_1

    .line 150
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 152
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
    .line 137
    check-cast p1, Lcom/dropbox/core/v2/sharing/AddMember;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/sharing/AddMember$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/AddMember;Lcom/d/a/a/g;Z)V

    return-void
.end method
