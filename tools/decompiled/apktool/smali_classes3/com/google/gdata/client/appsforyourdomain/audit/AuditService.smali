.class public Lcom/google/gdata/client/appsforyourdomain/audit/AuditService;
.super Lcom/google/gdata/client/appsforyourdomain/AppsPropertyService;
.source "AuditService.java"


# static fields
.field public static final BASE_URL:Ljava/lang/String; = "https://apps-apis.google.com/a/feeds/compliance/audit/"

.field private static final DATE_FORMAT:Ljava/text/DateFormat;

.field private static LOGGER:Ljava/util/logging/Logger;


# instance fields
.field private domain:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd%20hh:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/client/appsforyourdomain/audit/AuditService;->DATE_FORMAT:Ljava/text/DateFormat;

    .line 59
    sget-object v0, Lcom/google/gdata/client/appsforyourdomain/audit/AuditService;->DATE_FORMAT:Ljava/text/DateFormat;

    const-string/jumbo v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 60
    sget-object v0, Lcom/google/gdata/client/appsforyourdomain/audit/AuditService;->DATE_FORMAT:Ljava/text/DateFormat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setLenient(Z)V

    .line 63
    const-class v0, Lcom/google/gdata/client/appsforyourdomain/audit/AuditService;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/client/appsforyourdomain/audit/AuditService;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-direct {p0, p2}, Lcom/google/gdata/client/appsforyourdomain/AppsPropertyService;-><init>(Ljava/lang/String;)V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gdata/client/appsforyourdomain/audit/AuditService;->domain:Ljava/lang/String;

    .line 92
    iput-object p1, p0, Lcom/google/gdata/client/appsforyourdomain/audit/AuditService;->domain:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0, p3, p4}, Lcom/google/gdata/client/appsforyourdomain/audit/AuditService;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/client/appsforyourdomain/audit/AuditService;->setUserCredentials(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method


# virtual methods
.method public createAccountInfoRequest(Ljava/lang/String;)Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;,
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 300
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "https://apps-apis.google.com/a/feeds/compliance/audit/account/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/gdata/client/appsforyourdomain/audit/AuditService;->domain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 301
    new-instance v1, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;

    invoke-direct {v1}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/appsforyourdomain/audit/AuditService;->insert(Ljava/net/URL;Lcom/google/gdata/data/IEntry;)Lcom/google/gdata/data/IEntry;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;

    return-object v0
.end method

.method public createMailMonitor(Ljava/lang/String;Lcom/google/gdata/client/appsforyourdomain/audit/MailMonitor;)Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;,
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-virtual {p2}, Lcom/google/gdata/client/appsforyourdomain/audit/MailMonitor;->toGenericEntry()Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;

    move-result-object v0

    .line 113
    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "https://apps-apis.google.com/a/feeds/compliance/audit/mail/monitor/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/gdata/client/appsforyourdomain/audit/AuditService;->domain:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Lcom/google/gdata/client/appsforyourdomain/audit/AuditService;->insert(Ljava/net/URL;Lcom/google/gdata/data/IEntry;)Lcom/google/gdata/data/IEntry;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;

    return-object v0
.end method

.method public createMailboxDumpRequest(Lcom/google/gdata/client/appsforyourdomain/audit/MailBoxDumpRequest;)Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;,
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 184
    invoke-virtual {p1}, Lcom/google/gdata/client/appsforyourdomain/audit/MailBoxDumpRequest;->getUserEmailAddress()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 185
    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "https://apps-apis.google.com/a/feeds/compliance/audit/mail/export/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/gdata/client/appsforyourdomain/audit/AuditService;->domain:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p1}, Lcom/google/gdata/client/appsforyourdomain/audit/MailBoxDumpRequest;->toGenericEntry()Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/gdata/client/appsforyourdomain/audit/AuditService;->insert(Ljava/net/URL;Lcom/google/gdata/data/IEntry;)Lcom/google/gdata/data/IEntry;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;

    return-object v0
.end method

.method public deleteAccountInfoRequest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;,
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 388
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "https://apps-apis.google.com/a/feeds/compliance/audit/account/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/gdata/client/appsforyourdomain/audit/AuditService;->domain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 389
    invoke-virtual {p0, v0}, Lcom/google/gdata/client/appsforyourdomain/audit/AuditService;->delete(Ljava/net/URL;)V

    .line 390
    return-void
.end method

.method public deleteMailboxDumpRequest(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;,
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 277
    :try_start_0
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "https://apps-apis.google.com/a/feeds/compliance/audit/mail/export/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/gdata/client/appsforyourdomain/audit/AuditService;->domain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/appsforyourdomain/audit/AuditService;->delete(Ljava/net/URL;)V
    :try_end_0
    .catch Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    const/4 v0, 0x1

    .line 285
    :goto_0
    return v0

    .line 279
    :catch_0
    move-exception v0

    .line 280
    invoke-virtual {v0}, Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;->getErrorCode()Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainErrorCode;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainErrorCode;->InvalidValue:Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainErrorCode;

    if-ne v0, v1, :cond_0

    .line 281
    sget-object v0, Lcom/google/gdata/client/appsforyourdomain/audit/AuditService;->LOGGER:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string/jumbo v2, "The request should either have status COMPLETED orMARKED_DELETE before being deleted"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 285
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public deleteMonitor(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;,
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 148
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "https://apps-apis.google.com/a/feeds/compliance/audit/mail/monitor/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/gdata/client/appsforyourdomain/audit/AuditService;->domain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/appsforyourdomain/audit/AuditService;->delete(Ljava/net/URL;)V

    .line 149
    return-void
.end method

.method public retrieveAccountInfoRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;,
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 317
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "https://apps-apis.google.com/a/feeds/compliance/audit/account/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/gdata/client/appsforyourdomain/audit/AuditService;->domain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 318
    const-class v1, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/appsforyourdomain/audit/AuditService;->getEntry(Ljava/net/URL;Ljava/lang/Class;)Lcom/google/gdata/data/IEntry;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;

    return-object v0
.end method

.method public retrieveAllAccountInfoRequests(Ljava/util/Date;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;,
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "https://apps-apis.google.com/a/feeds/compliance/audit/account/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/client/appsforyourdomain/audit/AuditService;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 334
    if-eqz p1, :cond_0

    .line 335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "?fromDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/client/appsforyourdomain/audit/AuditService;->DATE_FORMAT:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 337
    :cond_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-class v0, Lcom/google/gdata/data/appsforyourdomain/generic/GenericFeed;

    invoke-virtual {p0, v1, v0}, Lcom/google/gdata/client/appsforyourdomain/audit/AuditService;->getAllPages(Ljava/net/URL;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public retrieveAllMailboxDumpRequests(Ljava/util/Date;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;,
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "https://apps-apis.google.com/a/feeds/compliance/audit/mail/export/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/client/appsforyourdomain/audit/AuditService;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 203
    if-eqz p1, :cond_0

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "?fromDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/client/appsforyourdomain/audit/AuditService;->DATE_FORMAT:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 206
    :cond_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-class v0, Lcom/google/gdata/data/appsforyourdomain/generic/GenericFeed;

    invoke-virtual {p0, v1, v0}, Lcom/google/gdata/client/appsforyourdomain/audit/AuditService;->getAllPages(Ljava/net/URL;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public retrieveMailboxDumpRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;,
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 259
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "https://apps-apis.google.com/a/feeds/compliance/audit/mail/export/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/gdata/client/appsforyourdomain/audit/AuditService;->domain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/appsforyourdomain/audit/AuditService;->getEntry(Ljava/net/URL;Ljava/lang/Class;)Lcom/google/gdata/data/IEntry;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;

    return-object v0
.end method

.method public retrieveMonitors(Ljava/lang/String;)Lcom/google/gdata/data/appsforyourdomain/generic/GenericFeed;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;,
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 128
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "https://apps-apis.google.com/a/feeds/compliance/audit/mail/monitor/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/gdata/client/appsforyourdomain/audit/AuditService;->domain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/google/gdata/data/appsforyourdomain/generic/GenericFeed;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/appsforyourdomain/audit/AuditService;->getFeed(Ljava/net/URL;Ljava/lang/Class;)Lcom/google/gdata/data/IFeed;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/appsforyourdomain/generic/GenericFeed;

    return-object v0
.end method

.method public retrieveNextPageOfAccountInfoRequests(Lcom/google/gdata/model/atom/Link;)Lcom/google/gdata/data/appsforyourdomain/generic/GenericFeed;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;,
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 375
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p1}, Lcom/google/gdata/model/atom/Link;->getHref()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/google/gdata/data/appsforyourdomain/generic/GenericFeed;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/appsforyourdomain/audit/AuditService;->getFeed(Ljava/net/URL;Ljava/lang/Class;)Lcom/google/gdata/data/IFeed;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/appsforyourdomain/generic/GenericFeed;

    return-object v0
.end method

.method public retrieveNextPageOfMailboxDumpRequests(Lcom/google/gdata/model/atom/Link;)Lcom/google/gdata/data/appsforyourdomain/generic/GenericFeed;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;,
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 243
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p1}, Lcom/google/gdata/model/atom/Link;->getHref()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/google/gdata/data/appsforyourdomain/generic/GenericFeed;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/appsforyourdomain/audit/AuditService;->getFeed(Ljava/net/URL;Ljava/lang/Class;)Lcom/google/gdata/data/IFeed;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/appsforyourdomain/generic/GenericFeed;

    return-object v0
.end method

.method public retrievePageOfAccountInfoRequests(Ljava/util/Date;)Lcom/google/gdata/data/appsforyourdomain/generic/GenericFeed;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;,
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "https://apps-apis.google.com/a/feeds/compliance/audit/account/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/client/appsforyourdomain/audit/AuditService;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 356
    if-eqz p1, :cond_0

    .line 357
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "?fromDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/client/appsforyourdomain/audit/AuditService;->DATE_FORMAT:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 359
    :cond_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-class v0, Lcom/google/gdata/data/appsforyourdomain/generic/GenericFeed;

    invoke-virtual {p0, v1, v0}, Lcom/google/gdata/client/appsforyourdomain/audit/AuditService;->getFeed(Ljava/net/URL;Ljava/lang/Class;)Lcom/google/gdata/data/IFeed;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/appsforyourdomain/generic/GenericFeed;

    return-object v0
.end method

.method public retrievePageOfMailboxDumpRequests(Ljava/util/Date;)Lcom/google/gdata/data/appsforyourdomain/generic/GenericFeed;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;,
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "https://apps-apis.google.com/a/feeds/compliance/audit/mail/export/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/client/appsforyourdomain/audit/AuditService;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 224
    if-eqz p1, :cond_0

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "?fromDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/client/appsforyourdomain/audit/AuditService;->DATE_FORMAT:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 227
    :cond_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-class v0, Lcom/google/gdata/data/appsforyourdomain/generic/GenericFeed;

    invoke-virtual {p0, v1, v0}, Lcom/google/gdata/client/appsforyourdomain/audit/AuditService;->getFeed(Ljava/net/URL;Ljava/lang/Class;)Lcom/google/gdata/data/IFeed;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/appsforyourdomain/generic/GenericFeed;

    return-object v0
.end method

.method public uploadPublicKey(Ljava/lang/String;)Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;,
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 165
    new-instance v0, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;

    invoke-direct {v0}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;-><init>()V

    .line 166
    const-string/jumbo v1, "publicKey"

    invoke-virtual {v0, v1, p1}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "https://apps-apis.google.com/a/feeds/compliance/audit/publickey/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/gdata/client/appsforyourdomain/audit/AuditService;->domain:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Lcom/google/gdata/client/appsforyourdomain/audit/AuditService;->insert(Ljava/net/URL;Lcom/google/gdata/data/IEntry;)Lcom/google/gdata/data/IEntry;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;

    return-object v0
.end method
