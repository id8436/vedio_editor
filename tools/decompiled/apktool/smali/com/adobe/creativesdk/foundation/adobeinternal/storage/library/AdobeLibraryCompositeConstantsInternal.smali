.class public Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeConstantsInternal;
.super Ljava/lang/Object;
.source "AdobeLibraryCompositeConstantsInternal.java"


# static fields
.field public static final AdobeLibraryBookmarkBookmarksBaseKey:Ljava/lang/String; = "bookmarks_base"

.field public static final AdobeLibraryBookmarkBookmarksKey:Ljava/lang/String; = "bookmarks"

.field public static final AdobeLibraryBookmarkEtagKey:Ljava/lang/String; = "etag"

.field public static final AdobeLibraryBookmarkIdKey:Ljava/lang/String; = "id"

.field public static final AdobeLibraryBookmarkURLKey:Ljava/lang/String; = "url"

.field public static final AdobeLibraryCommunityPlatformHostProduction:[[Ljava/lang/String;

.field public static final AdobeLibraryCommunityPlatformHostStaging:[[Ljava/lang/String;

.field public static final AdobeLibraryCompositeCategoriesNodeName:Ljava/lang/String; = "categories"

.field public static final AdobeLibraryCompositeCategoryKey:Ljava/lang/String; = "library#category"

.field public static final AdobeLibraryCompositeCreatedKey:Ljava/lang/String; = "library#created"

.field public static final AdobeLibraryCompositeElementTagsKey:Ljava/lang/String; = "tags"

.field public static final AdobeLibraryCompositeElementsNodeName:Ljava/lang/String; = "elements"

.field public static final AdobeLibraryCompositeModifiedKey:Ljava/lang/String; = "library#modified"

.field public static final AdobeLibraryCompositeRemovedElementsNodeName:Ljava/lang/String; = "removed_elements"

.field public static final AdobeLibraryCompositeRemovedKey:Ljava/lang/String; = "library#removed"

.field public static final AdobeLibraryCompositeRepresentationFullSizeKey:Ljava/lang/String; = "library#isfullSize"

.field public static final AdobeLibraryCompositeRepresentationHeightKey:Ljava/lang/String; = "library#height"

.field public static final AdobeLibraryCompositeRepresentationLinkContentLengthKey:Ljava/lang/String; = "library#length"

.field public static final AdobeLibraryCompositeRepresentationLinkContentTypeKey:Ljava/lang/String; = "library#linktype"

.field public static final AdobeLibraryCompositeRepresentationLinkFailedToDownload:Ljava/lang/String; = "ERROR"

.field public static final AdobeLibraryCompositeRepresentationLinkURLKey:Ljava/lang/String; = "library#linkurl"

.field public static final AdobeLibraryCompositeRepresentationOldHeightKey:Ljava/lang/String; = "height"

.field public static final AdobeLibraryCompositeRepresentationOldWidthKey:Ljava/lang/String; = "width"

.field public static final AdobeLibraryCompositeRepresentationOrderKey:Ljava/lang/String; = "library#representationOrder"

.field public static final AdobeLibraryCompositeRepresentationRelationshipKey:Ljava/lang/String; = "library#rel"

.field public static final AdobeLibraryCompositeRepresentationWidthKey:Ljava/lang/String; = "library#width"

.field public static final AdobeLibraryCompositeTypeValue:Ljava/lang/String; = "application/vnd.adobe.library+dcx"

.field public static final AdobeLibraryCompositeVersionKey:Ljava/lang/String; = "library#version"

.field public static final AdobeLibraryDCXGroupName:Ljava/lang/String; = "adobe-libraries"

.field public static final AdobeLibraryManifestVersion:I = 0x1

.field public static final AdobeLibraryNamespace:Ljava/lang/String; = "library"

.field public static final AdobeLibraryPublicFolderName:Ljava/lang/String; = "public"

.field public static final AdobeLibraryRenditionContentType:Ljava/lang/String; = "image/png"

.field public static final AdobeLibraryRenditionContentTypeJPG:Ljava/lang/String; = "image/jpg"

.field public static final AdobeLibraryRenditionFileExtension:Ljava/lang/String; = "png"

.field public static final AdobeLibraryRenditionFileExtensionJPG:Ljava/lang/String; = "jpg"

.field public static final AdobeLibraryRepresentationLinkType:Ljava/lang/String; = "application/vnd.adobe.library.link+dcx"

.field public static final AdobeLibraryWhitelistedDomains:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 29
    new-array v0, v6, [[Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "https://drakozoxj1229.cloudfront.net/"

    aput-object v2, v1, v3

    const-string/jumbo v2, "cp"

    aput-object v2, v1, v4

    aput-object v1, v0, v3

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "https://cdn-stage.cp.adobe.io/"

    aput-object v2, v1, v3

    const-string/jumbo v2, "cp"

    aput-object v2, v1, v4

    aput-object v1, v0, v4

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "https://public-stage.adobecc.com/"

    aput-object v2, v1, v3

    const-string/jumbo v2, "storage"

    aput-object v2, v1, v4

    aput-object v1, v0, v5

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeConstantsInternal;->AdobeLibraryCommunityPlatformHostStaging:[[Ljava/lang/String;

    .line 33
    new-array v0, v6, [[Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "https://drakozoxj1229.cloudfront.net/"

    aput-object v2, v1, v3

    const-string/jumbo v2, "cp"

    aput-object v2, v1, v4

    aput-object v1, v0, v3

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "https://cdn.cp.adobe.io/"

    aput-object v2, v1, v3

    const-string/jumbo v2, "cp"

    aput-object v2, v1, v4

    aput-object v1, v0, v4

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "https://public.adobecc.com/"

    aput-object v2, v1, v3

    const-string/jumbo v2, "storage"

    aput-object v2, v1, v4

    aput-object v1, v0, v5

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeConstantsInternal;->AdobeLibraryCommunityPlatformHostProduction:[[Ljava/lang/String;

    .line 76
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, ".adobe.com"

    aput-object v1, v0, v3

    const-string/jumbo v1, ".adobe.io"

    aput-object v1, v0, v4

    const-string/jumbo v1, ".fotolia.net"

    aput-object v1, v0, v5

    const-string/jumbo v1, ".adobecc.com"

    aput-object v1, v0, v6

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeConstantsInternal;->AdobeLibraryWhitelistedDomains:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
