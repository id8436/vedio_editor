.class public Ljavax/servlet/http/Cookie;
.super Ljava/lang/Object;
.source "Cookie.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final LSTRING_FILE:Ljava/lang/String; = "javax.servlet.http.LocalStrings"

.field private static lStrings:Ljava/util/ResourceBundle; = null

.field private static final tspecials:Ljava/lang/String; = ",; "


# instance fields
.field private comment:Ljava/lang/String;

.field private domain:Ljava/lang/String;

.field private maxAge:I

.field private name:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private secure:Z

.field private value:Ljava/lang/String;

.field private version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const-string/jumbo v0, "javax.servlet.http.LocalStrings"

    invoke-static {v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    sput-object v0, Ljavax/servlet/http/Cookie;->lStrings:Ljava/util/ResourceBundle;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const/4 v0, -0x1

    iput v0, p0, Ljavax/servlet/http/Cookie;->maxAge:I

    .line 99
    iput v2, p0, Ljavax/servlet/http/Cookie;->version:I

    .line 135
    invoke-direct {p0, p1}, Ljavax/servlet/http/Cookie;->isToken(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Comment"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Discard"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Domain"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Expires"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Max-Age"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Path"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Secure"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Version"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    :cond_0
    sget-object v0, Ljavax/servlet/http/Cookie;->lStrings:Ljava/util/ResourceBundle;

    const-string/jumbo v1, "err.cookie_name_is_token"

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 148
    aput-object p1, v1, v2

    .line 149
    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 150
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 153
    :cond_1
    iput-object p1, p0, Ljavax/servlet/http/Cookie;->name:Ljava/lang/String;

    .line 154
    iput-object p2, p0, Ljavax/servlet/http/Cookie;->value:Ljava/lang/String;

    .line 155
    return-void
.end method

.method private isToken(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 514
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    move v1, v0

    .line 516
    :goto_0
    if-ge v1, v2, :cond_2

    .line 517
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 519
    const/16 v4, 0x20

    if-lt v3, v4, :cond_0

    const/16 v4, 0x7f

    if-ge v3, v4, :cond_0

    const-string/jumbo v4, ",; "

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 522
    :cond_0
    :goto_1
    return v0

    .line 516
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 522
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 540
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 541
    :catch_0
    move-exception v0

    .line 542
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Ljavax/servlet/http/Cookie;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Ljavax/servlet/http/Cookie;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxAge()I
    .locals 1

    .prologue
    .line 292
    iget v0, p0, Ljavax/servlet/http/Cookie;->maxAge:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Ljavax/servlet/http/Cookie;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Ljavax/servlet/http/Cookie;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getSecure()Z
    .locals 1

    .prologue
    .line 381
    iget-boolean v0, p0, Ljavax/servlet/http/Cookie;->secure:Z

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Ljavax/servlet/http/Cookie;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 465
    iget v0, p0, Ljavax/servlet/http/Cookie;->version:I

    return v0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Ljavax/servlet/http/Cookie;->comment:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 222
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/servlet/http/Cookie;->domain:Ljava/lang/String;

    .line 223
    return-void
.end method

.method public setMaxAge(I)V
    .locals 0

    .prologue
    .line 270
    iput p1, p0, Ljavax/servlet/http/Cookie;->maxAge:I

    .line 271
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Ljavax/servlet/http/Cookie;->path:Ljava/lang/String;

    .line 321
    return-void
.end method

.method public setSecure(Z)V
    .locals 0

    .prologue
    .line 362
    iput-boolean p1, p0, Ljavax/servlet/http/Cookie;->secure:Z

    .line 363
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 424
    iput-object p1, p0, Ljavax/servlet/http/Cookie;->value:Ljava/lang/String;

    .line 425
    return-void
.end method

.method public setVersion(I)V
    .locals 0

    .prologue
    .line 489
    iput p1, p0, Ljavax/servlet/http/Cookie;->version:I

    .line 490
    return-void
.end method
