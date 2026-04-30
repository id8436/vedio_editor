.class Lcom/dropbox/core/v2/teamlog/MemberSuggestionsChangePolicyDetails$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "MemberSuggestionsChangePolicyDetails.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/teamlog/MemberSuggestionsChangePolicyDetails;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/teamlog/MemberSuggestionsChangePolicyDetails$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 133
    new-instance v0, Lcom/dropbox/core/v2/teamlog/MemberSuggestionsChangePolicyDetails$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/MemberSuggestionsChangePolicyDetails$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/MemberSuggestionsChangePolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/MemberSuggestionsChangePolicyDetails$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/MemberSuggestionsChangePolicyDetails;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 154
    .line 155
    if-nez p2, :cond_6

    .line 156
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/MemberSuggestionsChangePolicyDetails$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 157
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/MemberSuggestionsChangePolicyDetails$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v1

    .line 159
    :goto_0
    if-nez v1, :cond_5

    move-object v1, v0

    .line 162
    :goto_1
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v2

    sget-object v3, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v2, v3, :cond_2

    .line 163
    invoke-virtual {p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v2

    .line 164
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 165
    const-string/jumbo v3, "new_value"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 166
    sget-object v1, Lcom/dropbox/core/v2/teamlog/MemberSuggestionsPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/MemberSuggestionsPolicy$Serializer;

    invoke-virtual {v1, p1}, Lcom/dropbox/core/v2/teamlog/MemberSuggestionsPolicy$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/teamlog/MemberSuggestionsPolicy;

    move-result-object v1

    goto :goto_1

    .line 168
    :cond_0
    const-string/jumbo v3, "previous_value"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 169
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberSuggestionsPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/MemberSuggestionsPolicy$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/teamlog/MemberSuggestionsPolicy;

    goto :goto_1

    .line 172
    :cond_1
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/MemberSuggestionsChangePolicyDetails$Serializer;->skipValue(Lcom/d/a/a/k;)V

    goto :goto_1

    .line 175
    :cond_2
    if-nez v1, :cond_3

    .line 176
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"new_value\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_3
    new-instance v2, Lcom/dropbox/core/v2/teamlog/MemberSuggestionsChangePolicyDetails;

    invoke-direct {v2, v1, v0}, Lcom/dropbox/core/v2/teamlog/MemberSuggestionsChangePolicyDetails;-><init>(Lcom/dropbox/core/v2/teamlog/MemberSuggestionsPolicy;Lcom/dropbox/core/v2/teamlog/MemberSuggestionsPolicy;)V

    .line 183
    if-nez p2, :cond_4

    .line 184
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/MemberSuggestionsChangePolicyDetails$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 186
    :cond_4
    return-object v2

    .line 181
    :cond_5
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

    :cond_6
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
    .line 132
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/teamlog/MemberSuggestionsChangePolicyDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/MemberSuggestionsChangePolicyDetails;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/teamlog/MemberSuggestionsChangePolicyDetails;Lcom/d/a/a/g;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 137
    if-nez p3, :cond_0

    .line 138
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 140
    :cond_0
    const-string/jumbo v0, "new_value"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 141
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberSuggestionsPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/MemberSuggestionsPolicy$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/teamlog/MemberSuggestionsChangePolicyDetails;->newValue:Lcom/dropbox/core/v2/teamlog/MemberSuggestionsPolicy;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/teamlog/MemberSuggestionsPolicy$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/MemberSuggestionsPolicy;Lcom/d/a/a/g;)V

    .line 142
    iget-object v0, p1, Lcom/dropbox/core/v2/teamlog/MemberSuggestionsChangePolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/MemberSuggestionsPolicy;

    if-eqz v0, :cond_1

    .line 143
    const-string/jumbo v0, "previous_value"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 144
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberSuggestionsPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/MemberSuggestionsPolicy$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/teamlog/MemberSuggestionsChangePolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/MemberSuggestionsPolicy;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 146
    :cond_1
    if-nez p3, :cond_2

    .line 147
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 149
    :cond_2
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
    .line 132
    check-cast p1, Lcom/dropbox/core/v2/teamlog/MemberSuggestionsChangePolicyDetails;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/teamlog/MemberSuggestionsChangePolicyDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/MemberSuggestionsChangePolicyDetails;Lcom/d/a/a/g;Z)V

    return-void
.end method
