.class public Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmark;
.super Ljava/lang/Object;
.source "AdobeLibraryBookmark.java"


# instance fields
.field public bookmaarkID:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initWithId(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmark;
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmark;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmark;-><init>()V

    .line 21
    iput-object p0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmark;->bookmaarkID:Ljava/lang/String;

    .line 22
    iput-object p1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmark;->url:Ljava/lang/String;

    .line 23
    return-object v0
.end method
