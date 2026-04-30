.class Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "DomainInvitesEmailExistingUsersDetails.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 119
    new-instance v0, Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 138
    .line 139
    if-nez p2, :cond_7

    .line 140
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 141
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 143
    :goto_0
    if-nez v0, :cond_6

    move-object v2, v1

    .line 146
    :goto_1
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v3, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v0, v3, :cond_2

    .line 147
    invoke-virtual {p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 149
    const-string/jumbo v3, "domain_name"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 150
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_2
    move-object v2, v1

    move-object v1, v0

    .line 158
    goto :goto_1

    .line 152
    :cond_0
    const-string/jumbo v3, "num_recipients"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    move-object v1, v2

    goto :goto_2

    .line 156
    :cond_1
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails$Serializer;->skipValue(Lcom/d/a/a/k;)V

    move-object v0, v1

    move-object v1, v2

    goto :goto_2

    .line 159
    :cond_2
    if-nez v2, :cond_3

    .line 160
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"domain_name\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_3
    if-nez v1, :cond_4

    .line 163
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"num_recipients\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_4
    new-instance v0, Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v0, v2, v4, v5}, Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails;-><init>(Ljava/util/List;J)V

    .line 170
    if-nez p2, :cond_5

    .line 171
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 173
    :cond_5
    return-object v0

    .line 168
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
    .line 118
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails;Lcom/d/a/a/g;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 123
    if-nez p3, :cond_0

    .line 124
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 126
    :cond_0
    const-string/jumbo v0, "domain_name"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 127
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails;->domainName:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 128
    const-string/jumbo v0, "num_recipients"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 129
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-wide v2, p1, Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails;->numRecipients:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 130
    if-nez p3, :cond_1

    .line 131
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 133
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
    .line 118
    check-cast p1, Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails;Lcom/d/a/a/g;Z)V

    return-void
.end method
