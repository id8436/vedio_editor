.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryElementWithParent;
.super Ljava/lang/Object;
.source "AdobeLibraryElementWithParent.java"


# instance fields
.field private libraryComposite:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

.field private libraryElement:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryElementWithParent;->setLibraryElement(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)V

    .line 16
    invoke-virtual {p0, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryElementWithParent;->setLibraryComposite(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)V

    .line 17
    return-void
.end method


# virtual methods
.method public getLibraryComposite()Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryElementWithParent;->libraryComposite:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    return-object v0
.end method

.method public getLibraryElement()Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryElementWithParent;->libraryElement:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    return-object v0
.end method

.method public setLibraryComposite(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryElementWithParent;->libraryComposite:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    .line 25
    return-void
.end method

.method public setLibraryElement(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryElementWithParent;->libraryElement:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    .line 33
    return-void
.end method
