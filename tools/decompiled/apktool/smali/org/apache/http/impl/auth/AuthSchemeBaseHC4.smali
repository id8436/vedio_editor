.class public abstract Lorg/apache/http/impl/auth/AuthSchemeBaseHC4;
.super Ljava/lang/Object;
.source "AuthSchemeBaseHC4.java"

# interfaces
.implements Lorg/apache/http/auth/ContextAwareAuthScheme;


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private challengeState:Lorg/apache/http/auth/ChallengeState;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/auth/ChallengeState;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lorg/apache/http/impl/auth/AuthSchemeBaseHC4;->challengeState:Lorg/apache/http/auth/ChallengeState;

    .line 73
    return-void
.end method


# virtual methods
.method public authenticate(Lorg/apache/http/auth/Credentials;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/Header;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 136
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/impl/auth/AuthSchemeBaseHC4;->authenticate(Lorg/apache/http/auth/Credentials;Lorg/apache/http/HttpRequest;)Lorg/apache/http/Header;

    move-result-object v0

    return-object v0
.end method

.method public getChallengeState()Lorg/apache/http/auth/ChallengeState;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lorg/apache/http/impl/auth/AuthSchemeBaseHC4;->challengeState:Lorg/apache/http/auth/ChallengeState;

    return-object v0
.end method

.method public isProxy()Z
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lorg/apache/http/impl/auth/AuthSchemeBaseHC4;->challengeState:Lorg/apache/http/auth/ChallengeState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/http/impl/auth/AuthSchemeBaseHC4;->challengeState:Lorg/apache/http/auth/ChallengeState;

    sget-object v1, Lorg/apache/http/auth/ChallengeState;->PROXY:Lorg/apache/http/auth/ChallengeState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract parseChallenge(Lorg/apache/http/util/CharArrayBuffer;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/MalformedChallengeException;
        }
    .end annotation
.end method

.method public processChallenge(Lorg/apache/http/Header;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/MalformedChallengeException;
        }
    .end annotation

    .prologue
    .line 90
    const-string/jumbo v0, "Header"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 91
    invoke-interface {p1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v0

    .line 92
    const-string/jumbo v1, "WWW-Authenticate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    sget-object v0, Lorg/apache/http/auth/ChallengeState;->TARGET:Lorg/apache/http/auth/ChallengeState;

    iput-object v0, p0, Lorg/apache/http/impl/auth/AuthSchemeBaseHC4;->challengeState:Lorg/apache/http/auth/ChallengeState;

    .line 102
    :goto_0
    instance-of v0, p1, Lorg/apache/http/FormattedHeader;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 103
    check-cast v0, Lorg/apache/http/FormattedHeader;

    invoke-interface {v0}, Lorg/apache/http/FormattedHeader;->getBuffer()Lorg/apache/http/util/CharArrayBuffer;

    move-result-object v1

    .line 104
    check-cast p1, Lorg/apache/http/FormattedHeader;

    invoke-interface {p1}, Lorg/apache/http/FormattedHeader;->getValuePos()I

    move-result v0

    .line 114
    :goto_1
    invoke-virtual {v1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v2

    if-ge v0, v2, :cond_4

    invoke-virtual {v1, v0}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/apache/http/protocol/HTTP;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 94
    :cond_0
    const-string/jumbo v1, "Proxy-Authenticate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    sget-object v0, Lorg/apache/http/auth/ChallengeState;->PROXY:Lorg/apache/http/auth/ChallengeState;

    iput-object v0, p0, Lorg/apache/http/impl/auth/AuthSchemeBaseHC4;->challengeState:Lorg/apache/http/auth/ChallengeState;

    goto :goto_0

    .line 97
    :cond_1
    new-instance v1, Lorg/apache/http/auth/MalformedChallengeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unexpected header name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/http/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 106
    :cond_2
    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 107
    if-nez v0, :cond_3

    .line 108
    new-instance v0, Lorg/apache/http/auth/MalformedChallengeException;

    const-string/jumbo v1, "Header value is null"

    invoke-direct {v0, v1}, Lorg/apache/http/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_3
    new-instance v1, Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 111
    invoke-virtual {v1, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 112
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    move v2, v0

    .line 118
    :goto_2
    invoke-virtual {v1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v3

    if-ge v2, v3, :cond_5

    invoke-virtual {v1, v2}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/apache/http/protocol/HTTP;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_5

    .line 119
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 122
    :cond_5
    invoke-virtual {v1, v0, v2}, Lorg/apache/http/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/AuthSchemeBaseHC4;->getSchemeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 124
    new-instance v1, Lorg/apache/http/auth/MalformedChallengeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid scheme identifier: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/http/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 127
    :cond_6
    invoke-virtual {v1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v0

    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/http/impl/auth/AuthSchemeBaseHC4;->parseChallenge(Lorg/apache/http/util/CharArrayBuffer;II)V

    .line 128
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 161
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/AuthSchemeBaseHC4;->getSchemeName()Ljava/lang/String;

    move-result-object v0

    .line 162
    if-eqz v0, :cond_0

    .line 163
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 165
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
