.class public Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;
.super Lcom/adobe/premiereclip/editor/TopOfEditorActivity;
.source "GalleryActivity.java"

# interfaces
.implements Lcom/adobe/premiereclip/mediabrowser/IMediaItemSelectionListener;


# static fields
.field private static final APP_KEY:Ljava/lang/String; = "nd82cy66iibva6b"

.field private static final APP_SECRET:Ljava/lang/String; = "6fq9hvl1cu0g86a"

.field private static final COLUMN_COUNT:I = 0x4

.field public static final GROUPING_ERROR:I = 0x37

.field public static final INTENT_ARG_MEDIA_TYPE:Ljava/lang/String; = "media_type"

.field public static final INTENT_ARG_SINGLE_SELECTION:Ljava/lang/String; = "single_selection"

.field public static final INTENT_ARG_SOURCE:Ljava/lang/String; = "source"

.field public static final INTENT_ARG_TYPE:Ljava/lang/String; = "type"

.field public static final INTENT_EXTRA_LIST:Ljava/lang/String; = "Gallery_selected_paths"

.field public static final INTENT_RESULT_MEDIA_DATE:Ljava/lang/String; = "media_date"

.field public static final INTENT_RESULT_MEDIA_NAME:Ljava/lang/String; = "media_name"

.field public static final IO_EXCEPTION:I = 0x2c

.field public static final MAX_SIZE_LIMIT_IN_BYTES:J = 0x140000000L

.field public static final MEDIA_ADD_LIMIT:I = 0x64

.field public static final NO_ALBUMS:I = 0x16

.field public static final NO_INTERNET_CONNECTION:I = 0x21

.field private static final ONE_GB:J = 0x40000000L

.field private static final REQUEST_ACCOUNT_PICKER:I = 0x2

.field public static final REQUEST_AUTHORIZATION:I = 0x1

.field public static final SOURCE_DEVICE:Ljava/lang/String; = "device"

.field public static final SOURCE_DROPBOX:Ljava/lang/String; = "dropbox"

.field public static final SOURCE_GOOGLE_DRIVE:Ljava/lang/String; = "google_drive"

.field public static final SOURCE_GOOGLE_PHOTOS:Ljava/lang/String; = "google_photos"

.field public static final SOURCE_MOMENTS:Ljava/lang/String; = "moments"

.field private static final TAG:Ljava/lang/String; = "GALLERY"

.field private static sDbxClient:Lcom/dropbox/core/v2/DbxClientV2;

.field private static final sourceNames:[Ljava/lang/String;


# instance fields
.field private cancelAssetDownload:Z

.field private cancelThumbnailDownload:Z

.field private downloadCount:I

.field private enabledMediaTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private imageSize:I

.field private isConnected:Z

.field private mAdapter:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;

.field private mBackButton:Landroid/widget/ImageView;

.field private mDoneButton:Landroid/widget/Button;

.field private mDoneString:Ljava/lang/String;

.field private mFileSystemSource:Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource;

.field private mGalleryAdapterForFileSystem:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;

.field private mGallerySource:Lcom/adobe/premiereclip/mediabrowser/source/GallerySource;

.field private mProgressDialog:Lcom/alertdialogpro/b;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mSelectedMediaList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/mediabrowser/MediaModel;",
            ">;"
        }
    .end annotation
.end field

.field private mSourceListAdapter:Lcom/adobe/premiereclip/mediabrowser/SourceListAdapter;

.field private mSourceListView:Landroid/support/v7/widget/RecyclerView;

.field private mediaPathList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private network_reachability_observer:Ljava/util/Observer;

.field private photosDownloadDialog:Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;

.field private popupWindow:Landroid/widget/PopupWindow;

.field public signInButton:Landroid/widget/Button;

.field private singleSelection:Z

.field private sourceName:Ljava/lang/String;

.field private switchingAccount:Z

.field public textView:Landroid/widget/TextView;

.field public textViewLayout:Landroid/widget/RelativeLayout;

.field private tfCollection:Lcom/h/a/a;

.field private timelineThumbSize:I

.field private titleTextView:Landroid/widget/TextView;

.field private toolbar:Landroid/support/v7/widget/Toolbar;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 119
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "device"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "moments"

    aput-object v2, v0, v1

    sput-object v0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->sourceNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/TopOfEditorActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->handleMenuOperations(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->popupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mGalleryAdapterForFileSystem:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;)Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mGalleryAdapterForFileSystem:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mSelectedMediaList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mDoneButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->photosDownloadDialog:Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->cancelAssetDownload:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;Z)Z
    .locals 0

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->cancelAssetDownload:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->loadFileSystemData()V

    return-void
.end method

.method static synthetic access$1700(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->loadSourceData()V

    return-void
.end method

.method static synthetic access$1800(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->enabledMediaTypes:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mFileSystemSource:Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource;

    return-object v0
.end method

.method static synthetic access$200(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Lcom/adobe/premiereclip/mediabrowser/source/GallerySource;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mGallerySource:Lcom/adobe/premiereclip/mediabrowser/source/GallerySource;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->imageSize:I

    return v0
.end method

.method static synthetic access$2100(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Lcom/h/a/a;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->tfCollection:Lcom/h/a/a;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->singleSelection:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->createButtonListeners()V

    return-void
.end method

.method static synthetic access$2400(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->timelineThumbSize:I

    return v0
.end method

.method static synthetic access$2500(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->addOnScrollListener(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Lcom/alertdialogpro/b;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mProgressDialog:Lcom/alertdialogpro/b;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->deliverResultToParentActivity()V

    return-void
.end method

.method static synthetic access$2802(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;Z)Z
    .locals 0

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->cancelThumbnailDownload:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->deleteTempFolder()V

    return-void
.end method

.method static synthetic access$300(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mAdapter:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->downloadCount:I

    return v0
.end method

.method static synthetic access$3008(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)I
    .locals 2

    .prologue
    .line 91
    iget v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->downloadCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->downloadCount:I

    return v0
.end method

.method static synthetic access$302(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;)Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mAdapter:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mediaPathList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->moveFilesToMainFolder()V

    return-void
.end method

.method static synthetic access$3300(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->onMediaPathsAvailable(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$400(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->getSource(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Lcom/adobe/premiereclip/mediabrowser/SourceListAdapter;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mSourceListAdapter:Lcom/adobe/premiereclip/mediabrowser/SourceListAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Landroid/support/v7/widget/Toolbar;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    return-object v0
.end method

.method static synthetic access$700(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->sourceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->sourceName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Z
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->isNetworkAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->isConnected:Z

    return v0
.end method

.method static synthetic access$902(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;Z)Z
    .locals 0

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->isConnected:Z

    return p1
.end method

.method private addOnScrollListener(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;)V
    .locals 2

    .prologue
    .line 828
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/adobe/premiereclip/util/Utilities$AdapterImageLoaderOnScrollListener;

    invoke-direct {v1, p1, p0}, Lcom/adobe/premiereclip/util/Utilities$AdapterImageLoaderOnScrollListener;-><init>(Lcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 829
    return-void
.end method

.method private createButtonListeners()V
    .locals 2

    .prologue
    .line 835
    .line 836
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mBackButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$13;

    invoke-direct {v1, p0, p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$13;-><init>(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 848
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mDoneButton:Landroid/widget/Button;

    new-instance v1, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$14;

    invoke-direct {v1, p0, p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$14;-><init>(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 855
    return-void
.end method

.method private deleteTempFolder()V
    .locals 4

    .prologue
    .line 1139
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->sourceName:Ljava/lang/String;

    const-string/jumbo v1, "google_photos"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/adobe/premiereclip/PremiereClipApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/GooglePhotos/temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1146
    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1148
    :try_start_0
    const-string/jumbo v0, "GALLERY"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "File exists? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; Deleting temp folder"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    invoke-static {v1}, Lorg/apache/commons/io/FileUtils;->deleteDirectory(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1153
    :goto_1
    return-void

    .line 1141
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->sourceName:Ljava/lang/String;

    const-string/jumbo v1, "google_drive"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/adobe/premiereclip/PremiereClipApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/GoogleDrive/temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1144
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/adobe/premiereclip/PremiereClipApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/Dropbox/files/temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1150
    :catch_0
    move-exception v0

    .line 1151
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private deliverResultToParentActivity()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 861
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mGallerySource:Lcom/adobe/premiereclip/mediabrowser/source/GallerySource;

    instance-of v0, v0, Lcom/adobe/premiereclip/mediabrowser/source/DeviceMediaSource;

    if-eqz v0, :cond_2

    .line 862
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mediaPathList:Ljava/util/ArrayList;

    .line 863
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mSelectedMediaList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    .line 864
    iget-object v2, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mediaPathList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 866
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mediaPathList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->onMediaPathsAvailable(Ljava/util/ArrayList;)V

    .line 1135
    :cond_1
    return-void

    .line 868
    :cond_2
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mGallerySource:Lcom/adobe/premiereclip/mediabrowser/source/GallerySource;

    instance-of v0, v0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;

    if-eqz v0, :cond_4

    .line 869
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    const-string/jumbo v1, "GooglePhotos"

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->didAttemptImportOfRemoteSourceAssetInMediaPicker(Ljava/lang/String;)V

    .line 870
    iput-boolean v4, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->cancelAssetDownload:Z

    .line 871
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->cancelThumbnailDownload:Z

    .line 872
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mediaPathList:Ljava/util/ArrayList;

    .line 874
    new-instance v0, Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->photosDownloadDialog:Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;

    .line 875
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->photosDownloadDialog:Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;

    invoke-virtual {v0, v4}, Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;->setCanceledOnTouchOutside(Z)V

    .line 876
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->photosDownloadDialog:Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;->show()V

    .line 877
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->photosDownloadDialog:Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mSelectedMediaList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;->maximumProgress(I)V

    .line 878
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->photosDownloadDialog:Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;

    const v1, 0x7f0202ff

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;->setImageSource(I)V

    .line 879
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->photosDownloadDialog:Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;->mCancel:Landroid/widget/TextView;

    new-instance v1, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$15;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$15;-><init>(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 891
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mAdapter:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->setAllBucketDownloadCancel()V

    .line 892
    const-string/jumbo v0, "GALLERY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No. of selected assets = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mSelectedMediaList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    iput v4, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->downloadCount:I

    .line 895
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 896
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mSelectedMediaList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    .line 897
    const-string/jumbo v3, "GALLERY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Adding id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " to list"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 901
    :cond_3
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mSelectedMediaList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    .line 902
    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mGallerySource:Lcom/adobe/premiereclip/mediabrowser/source/GallerySource;

    check-cast v1, Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource;

    new-instance v4, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;

    invoke-direct {v4, p0, v2, v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;-><init>(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;Ljava/util/ArrayList;Lcom/adobe/premiereclip/mediabrowser/MediaModel;)V

    invoke-virtual {v1, v0, v4}, Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource;->fetchFiles(Lcom/adobe/premiereclip/mediabrowser/MediaModel;Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource$MediaFileListener;)V

    goto :goto_2

    .line 995
    :cond_4
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->sourceName:Ljava/lang/String;

    const-string/jumbo v1, "google_drive"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "GoogleDrive"

    move-object v1, v0

    .line 998
    :goto_3
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->didAttemptImportOfRemoteSourceAssetInMediaPicker(Ljava/lang/String;)V

    .line 1000
    iput-boolean v4, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->cancelAssetDownload:Z

    .line 1001
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mediaPathList:Ljava/util/ArrayList;

    .line 1003
    new-instance v0, Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->photosDownloadDialog:Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;

    .line 1004
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->photosDownloadDialog:Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;->show()V

    .line 1005
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->photosDownloadDialog:Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;

    iget-object v2, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mSelectedMediaList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    invoke-virtual {v0, v2}, Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;->maximumProgress(I)V

    .line 1006
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->sourceName:Ljava/lang/String;

    const-string/jumbo v2, "google_drive"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1007
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->photosDownloadDialog:Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;

    const v2, 0x7f0202fe

    invoke-virtual {v0, v2}, Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;->setImageSource(I)V

    .line 1012
    :cond_5
    :goto_4
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->photosDownloadDialog:Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;->mCancel:Landroid/widget/TextView;

    new-instance v2, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$17;

    invoke-direct {v2, p0, v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$17;-><init>(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1021
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->photosDownloadDialog:Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;

    invoke-virtual {v0, v4}, Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;->setCanceledOnTouchOutside(Z)V

    .line 1023
    const-string/jumbo v0, "GALLERY"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No. of selected assets = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mSelectedMediaList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    iput v4, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->downloadCount:I

    .line 1026
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1027
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mSelectedMediaList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    .line 1028
    const-string/jumbo v4, "GALLERY"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Adding id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " to list"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 995
    :cond_6
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->sourceName:Ljava/lang/String;

    const-string/jumbo v1, "dropbox"

    .line 996
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, "Dropbox"

    move-object v1, v0

    goto/16 :goto_3

    :cond_7
    const-string/jumbo v0, "??"

    move-object v1, v0

    goto/16 :goto_3

    .line 1008
    :cond_8
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->sourceName:Ljava/lang/String;

    const-string/jumbo v2, "dropbox"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1009
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->photosDownloadDialog:Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;

    const v2, 0x7f0202fd

    invoke-virtual {v0, v2}, Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;->setImageSource(I)V

    goto/16 :goto_4

    .line 1032
    :cond_9
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mSelectedMediaList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    .line 1033
    const-string/jumbo v4, "GALLERY"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "in loop, id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    iget-object v4, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mFileSystemSource:Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource;

    new-instance v5, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$18;

    invoke-direct {v5, p0, v2, v0, v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$18;-><init>(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;Ljava/util/ArrayList;Lcom/adobe/premiereclip/mediabrowser/MediaModel;Ljava/lang/String;)V

    invoke-virtual {v4, v0, v5}, Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource;->getAsset(Lcom/adobe/premiereclip/mediabrowser/MediaModel;Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$AssetLoadListener;)V

    goto :goto_6
.end method

.method public static getClient()Lcom/dropbox/core/v2/DbxClientV2;
    .locals 1

    .prologue
    .line 497
    sget-object v0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->sDbxClient:Lcom/dropbox/core/v2/DbxClientV2;

    return-object v0
.end method

.method public static getMaximumLimitInGB()Ljava/lang/String;
    .locals 2

    .prologue
    .line 818
    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    .line 819
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSource(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 428
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->createButtonListeners()V

    .line 430
    const-string/jumbo v0, "device"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "moments"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 431
    :cond_0
    invoke-static {p0}, Lcom/adobe/premiereclip/ClipPreferences;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/ClipPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/ClipPreferences;->getDeviceSource()Ljava/lang/String;

    move-result-object p1

    .line 434
    :cond_1
    invoke-static {p1}, Lcom/adobe/premiereclip/mediabrowser/source/GallerySource;->createSource(Ljava/lang/String;)Lcom/adobe/premiereclip/mediabrowser/source/GallerySource;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mGallerySource:Lcom/adobe/premiereclip/mediabrowser/source/GallerySource;

    .line 435
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->titleTextView:Landroid/widget/TextView;

    invoke-static {p0, p1}, Lcom/adobe/premiereclip/mediabrowser/source/GallerySource;->getSourceString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mGallerySource:Lcom/adobe/premiereclip/mediabrowser/source/GallerySource;

    instance-of v0, v0, Lcom/adobe/premiereclip/mediabrowser/source/DeviceMediaSource;

    if-eqz v0, :cond_3

    .line 437
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 438
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->loadSourceData()V

    .line 475
    :cond_2
    :goto_0
    return-void

    .line 442
    :cond_3
    const v0, 0x7f120129

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 443
    const v0, 0x7f12012b

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 444
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_4

    .line 445
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->textView:Landroid/widget/TextView;

    const v1, 0x7f0a043c

    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 446
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->textViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 447
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->signInButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 448
    iput-boolean v2, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->isConnected:Z

    goto :goto_0

    .line 450
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->isConnected:Z

    .line 451
    const-string/jumbo v0, "google_drive"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 452
    new-instance v0, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;

    invoke-direct {v0}, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mFileSystemSource:Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource;

    .line 453
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mFileSystemSource:Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource;

    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$8;

    invoke-direct {v2, p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$8;-><init>(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)V

    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource;->login(Landroid/content/Context;Landroid/app/Activity;Ljava/lang/String;Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$LoginListener;)V

    goto :goto_0

    .line 459
    :cond_5
    const-string/jumbo v0, "dropbox"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 460
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->textView:Landroid/widget/TextView;

    const v1, 0x7f0a0467

    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 461
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->signInButton:Landroid/widget/Button;

    const v1, 0x7f0a0466

    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 462
    new-instance v0, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource;

    invoke-direct {v0}, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mFileSystemSource:Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource;

    .line 463
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->loginToDropbox()V

    goto/16 :goto_0

    .line 464
    :cond_6
    const-string/jumbo v0, "google_photos"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 465
    invoke-static {p1}, Lcom/adobe/premiereclip/mediabrowser/source/GallerySource;->createSource(Ljava/lang/String;)Lcom/adobe/premiereclip/mediabrowser/source/GallerySource;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mGallerySource:Lcom/adobe/premiereclip/mediabrowser/source/GallerySource;

    .line 466
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mGallerySource:Lcom/adobe/premiereclip/mediabrowser/source/GallerySource;

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource;

    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$9;

    invoke-direct {v2, p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$9;-><init>(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)V

    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource;->login(Landroid/content/Context;Landroid/app/Activity;Ljava/lang/String;Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource$LoginListener;)V

    goto/16 :goto_0
.end method

.method private handleMenuOperations(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 295
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->isNetworkAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 296
    const v0, 0x7f0a04fa

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    move v0, v1

    .line 317
    :goto_0
    return v0

    .line 298
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f12063e

    if-ne v2, v3, :cond_0

    .line 299
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "type"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "dropbox"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 300
    iput-boolean v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->switchingAccount:Z

    .line 301
    sput-object v4, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->sDbxClient:Lcom/dropbox/core/v2/DbxClientV2;

    .line 302
    const-string/jumbo v1, "GALLERY"

    const-string/jumbo v2, "switching account, removing oauth token"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-static {p0}, Lcom/adobe/premiereclip/ClipPreferences;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/ClipPreferences;

    move-result-object v1

    const-string/jumbo v2, "ACCESS_KEY"

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/ClipPreferences;->removePreference(Ljava/lang/String;)V

    .line 304
    invoke-static {p0}, Lcom/adobe/premiereclip/ClipPreferences;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/ClipPreferences;

    move-result-object v1

    const-string/jumbo v2, "ACCESS_SECRET"

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/ClipPreferences;->removePreference(Ljava/lang/String;)V

    .line 305
    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mGalleryAdapterForFileSystem:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;

    if-eqz v1, :cond_2

    .line 306
    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mGalleryAdapterForFileSystem:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->clearStack()V

    .line 307
    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mGalleryAdapterForFileSystem:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->clearDataset()V

    .line 309
    :cond_2
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->login()V

    goto :goto_0

    .line 311
    :cond_3
    invoke-static {p0}, Lcom/adobe/premiereclip/ClipPreferences;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/ClipPreferences;

    move-result-object v1

    const-string/jumbo v2, "googleAccount"

    invoke-virtual {v1, v2, v4}, Lcom/adobe/premiereclip/ClipPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 312
    const-string/jumbo v2, "com.google"

    invoke-static {p0, v2, v1}, Lcom/adobe/premiereclip/mediabrowser/Utils;->pickUserAccount(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static init(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 485
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "in init: Main"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 486
    sget-object v0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->sDbxClient:Lcom/dropbox/core/v2/DbxClientV2;

    if-nez v0, :cond_0

    .line 487
    const-string/jumbo v0, "some clientIdentifier"

    invoke-static {v0}, Lcom/dropbox/core/DbxRequestConfig;->newBuilder(Ljava/lang/String;)Lcom/dropbox/core/DbxRequestConfig$Builder;

    move-result-object v0

    new-instance v1, Lcom/dropbox/core/http/OkHttp3Requestor;

    .line 488
    invoke-static {}, Lcom/dropbox/core/http/OkHttp3Requestor;->defaultOkHttpClient()Ld/ar;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/dropbox/core/http/OkHttp3Requestor;-><init>(Ld/ar;)V

    invoke-virtual {v0, v1}, Lcom/dropbox/core/DbxRequestConfig$Builder;->withHttpRequestor(Lcom/dropbox/core/http/HttpRequestor;)Lcom/dropbox/core/DbxRequestConfig$Builder;

    move-result-object v0

    .line 489
    invoke-virtual {v0}, Lcom/dropbox/core/DbxRequestConfig$Builder;->build()Lcom/dropbox/core/DbxRequestConfig;

    move-result-object v0

    .line 491
    new-instance v1, Lcom/dropbox/core/v2/DbxClientV2;

    invoke-direct {v1, v0, p0}, Lcom/dropbox/core/v2/DbxClientV2;-><init>(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;)V

    sput-object v1, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->sDbxClient:Lcom/dropbox/core/v2/DbxClientV2;

    .line 492
    const-string/jumbo v0, "Preferences"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "init: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->sDbxClient:Lcom/dropbox/core/v2/DbxClientV2;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :cond_0
    return-void
.end method

.method private isNetworkAvailable()Z
    .locals 1

    .prologue
    .line 366
    const-string/jumbo v0, "connectivity"

    .line 367
    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 368
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 369
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadAuth()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 509
    invoke-static {p0}, Lcom/adobe/premiereclip/ClipPreferences;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/ClipPreferences;

    move-result-object v0

    const-string/jumbo v1, "ACCESS_KEY"

    invoke-virtual {v0, v1, v3}, Lcom/adobe/premiereclip/ClipPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 510
    invoke-static {p0}, Lcom/adobe/premiereclip/ClipPreferences;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/ClipPreferences;

    move-result-object v1

    const-string/jumbo v2, "ACCESS_SECRET"

    invoke-virtual {v1, v2, v3}, Lcom/adobe/premiereclip/ClipPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 511
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 512
    :cond_0
    const/4 v0, 0x0

    .line 514
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private loadFileSystemData()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 553
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->resetSelectedMediaList()V

    .line 554
    iput v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->downloadCount:I

    .line 555
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->showSpinner()V

    .line 556
    iput-boolean v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->cancelAssetDownload:Z

    .line 557
    iput-boolean v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->switchingAccount:Z

    .line 559
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mFileSystemSource:Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource;

    const/4 v1, 0x0

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$10;

    invoke-direct {v3, p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$10;-><init>(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)V

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource;->getChildren(Landroid/app/Activity;Lcom/adobe/premiereclip/mediabrowser/Bucket;Landroid/os/Handler;Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$FolderLoadListener;)V

    .line 627
    return-void
.end method

.method private loadSourceData()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 630
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->resetSelectedMediaList()V

    .line 631
    iput v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->downloadCount:I

    .line 632
    iput-boolean v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->cancelAssetDownload:Z

    .line 634
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->showSpinner()V

    .line 635
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mGallerySource:Lcom/adobe/premiereclip/mediabrowser/source/GallerySource;

    new-instance v1, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$11;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$11;-><init>(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)V

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0, p0, v1, v2}, Lcom/adobe/premiereclip/mediabrowser/source/GallerySource;->fetchData(Landroid/content/Context;Lcom/adobe/premiereclip/mediabrowser/source/GallerySource$GalleryDataListener;Landroid/os/Handler;)V

    .line 704
    return-void
.end method

.method private login()V
    .locals 2

    .prologue
    .line 548
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 549
    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->getSource(Ljava/lang/String;)V

    .line 550
    return-void
.end method

.method private loginToDropbox()V
    .locals 2

    .prologue
    .line 478
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "in loginToDropbox: Gallery"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 479
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->switchingAccount:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->loadAuth()Z

    move-result v0

    if-nez v0, :cond_1

    .line 480
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "nd82cy66iibva6b"

    invoke-static {v0, v1}, Lcom/dropbox/core/android/Auth;->startOAuth2Authentication(Landroid/content/Context;Ljava/lang/String;)V

    .line 482
    :cond_1
    return-void
.end method

.method private moveFilesToMainFolder()V
    .locals 8

    .prologue
    .line 1158
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->sourceName:Ljava/lang/String;

    const-string/jumbo v1, "google_photos"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/adobe/premiereclip/PremiereClipApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/GooglePhotos"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/adobe/premiereclip/PremiereClipApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "/GooglePhotos/temp"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1168
    :goto_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1169
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1170
    const-string/jumbo v0, "GALLERY"

    const-string/jumbo v3, "in moveFilesToMainFolder"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1172
    const-string/jumbo v0, "GALLERY"

    const-string/jumbo v3, "in moveFilesToMainFolder 1"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_2

    aget-object v0, v3, v1

    .line 1174
    const-string/jumbo v5, "GALLERY"

    const-string/jumbo v6, "in moveFilesToMainFolder 2"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    :try_start_0
    invoke-static {v0, v2}, Lorg/apache/commons/io/FileUtils;->copyFileToDirectory(Ljava/io/File;Ljava/io/File;)V

    .line 1177
    const-string/jumbo v5, "GALLERY"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Moved file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1173
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1161
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->sourceName:Ljava/lang/String;

    const-string/jumbo v1, "google_drive"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/adobe/premiereclip/PremiereClipApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/GoogleDrive"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/adobe/premiereclip/PremiereClipApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "/GoogleDrive/temp"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1165
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/adobe/premiereclip/PremiereClipApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/Dropbox/files"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/adobe/premiereclip/PremiereClipApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "/Dropbox/files/temp"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1178
    :catch_0
    move-exception v0

    .line 1179
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1180
    const-string/jumbo v0, "GALLERY"

    const-string/jumbo v5, "Error in moving file from temp to main folder"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1184
    :cond_2
    return-void
.end method

.method private onMediaPathsAvailable(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 1198
    const-string/jumbo v0, "GALLERY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "on Media Paths available, size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1200
    const-string/jumbo v0, "Gallery_selected_paths"

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1201
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->singleSelection:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->sourceName:Ljava/lang/String;

    const-string/jumbo v1, "google_drive"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->sourceName:Ljava/lang/String;

    const-string/jumbo v1, "dropbox"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1202
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mSelectedMediaList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    .line 1203
    instance-of v1, v0, Lcom/adobe/premiereclip/mediabrowser/MediaModelForRemote;

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 1204
    check-cast v1, Lcom/adobe/premiereclip/mediabrowser/MediaModelForRemote;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediabrowser/MediaModelForRemote;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 1205
    const-string/jumbo v3, "media_name"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1206
    const-string/jumbo v1, "media_date"

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getDate()J

    move-result-wide v4

    invoke-virtual {v2, v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1210
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1211
    invoke-virtual {p0, v6, v2}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->setResult(ILandroid/content/Intent;)V

    .line 1215
    :goto_0
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->finish()V

    .line 1216
    return-void

    .line 1213
    :cond_2
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v6, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method private registerNetworkChangeNotification()V
    .locals 3

    .prologue
    .line 373
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->network_reachability_observer:Ljava/util/Observer;

    if-nez v0, :cond_0

    .line 374
    new-instance v0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$7;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$7;-><init>(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->network_reachability_observer:Ljava/util/Observer;

    .line 418
    :cond_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeNetworkStatusChangeNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    iget-object v2, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->network_reachability_observer:Ljava/util/Observer;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->addObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V

    .line 420
    return-void
.end method

.method private resetSelectedMediaList()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 767
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mSelectedMediaList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 768
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mDoneButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 769
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 770
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mDoneButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mDoneString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 771
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 772
    return-void
.end method

.method public static setClient(Lcom/dropbox/core/v2/DbxClientV2;)V
    .locals 0

    .prologue
    .line 500
    sput-object p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->sDbxClient:Lcom/dropbox/core/v2/DbxClientV2;

    .line 501
    return-void
.end method

.method private storeAuth()Z
    .locals 5

    .prologue
    .line 523
    const-string/jumbo v0, "GALLERY"

    const-string/jumbo v1, "in storeAuth:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    invoke-static {}, Lcom/dropbox/core/android/Auth;->getOAuth2Token()Ljava/lang/String;

    move-result-object v0

    .line 526
    invoke-static {p0}, Lcom/adobe/premiereclip/ClipPreferences;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/ClipPreferences;

    move-result-object v1

    const-string/jumbo v2, "ACCESS_SECRET"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/adobe/premiereclip/ClipPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 527
    if-eqz v0, :cond_2

    .line 528
    const-string/jumbo v2, "GALLERY"

    const-string/jumbo v3, "in storeAuth: oauthaccessstoken not null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    invoke-static {p0}, Lcom/adobe/premiereclip/ClipPreferences;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/ClipPreferences;

    move-result-object v2

    const-string/jumbo v3, "ACCESS_KEY"

    const-string/jumbo v4, "oauth2:"

    invoke-virtual {v2, v3, v4}, Lcom/adobe/premiereclip/ClipPreferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    invoke-static {p0}, Lcom/adobe/premiereclip/ClipPreferences;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/ClipPreferences;

    move-result-object v2

    const-string/jumbo v3, "ACCESS_SECRET"

    invoke-virtual {v2, v3, v0}, Lcom/adobe/premiereclip/ClipPreferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->init(Ljava/lang/String;)V

    .line 536
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_3

    :cond_1
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 532
    :cond_2
    if-eqz v1, :cond_0

    .line 533
    const-string/jumbo v2, "GALLERY"

    const-string/jumbo v3, "oauth2AccessToken is null, using secret"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    invoke-static {v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->init(Ljava/lang/String;)V

    goto :goto_0

    .line 536
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private unRegisterNetworkChangeNotification()V
    .locals 3

    .prologue
    .line 423
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeNetworkStatusChangeNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    iget-object v2, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->network_reachability_observer:Ljava/util/Observer;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->removeObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V

    .line 425
    return-void
.end method


# virtual methods
.method public clearCurrentSingleSelection()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1383
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mSelectedMediaList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getId()Ljava/lang/String;

    move-result-object v0

    .line 1384
    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mSelectedMediaList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1385
    return-object v0
.end method

.method public decreaseMaximumProgress()V
    .locals 1

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->photosDownloadDialog:Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->photosDownloadDialog:Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1194
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->photosDownloadDialog:Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;->decreaseMaxProgress()V

    .line 1196
    :cond_0
    return-void
.end method

.method public dismissSpinner()V
    .locals 2

    .prologue
    .line 810
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mProgressDialog:Lcom/alertdialogpro/b;

    if-eqz v0, :cond_0

    .line 811
    const-string/jumbo v0, "GALLERY"

    const-string/jumbo v1, "progress bar dismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mProgressDialog:Lcom/alertdialogpro/b;

    invoke-virtual {v0}, Lcom/alertdialogpro/b;->dismiss()V

    .line 813
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mProgressDialog:Lcom/alertdialogpro/b;

    .line 815
    :cond_0
    return-void
.end method

.method public getSelectedMediaCount()I
    .locals 1

    .prologue
    .line 1379
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mSelectedMediaList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getSelectedMediaList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/mediabrowser/MediaModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1367
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mSelectedMediaList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isCancelDownload()Z
    .locals 1

    .prologue
    .line 775
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->cancelAssetDownload:Z

    return v0
.end method

.method public isCancelThumbnailDownload()Z
    .locals 1

    .prologue
    .line 540
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->cancelThumbnailDownload:Z

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .prologue
    const v4, 0x7f0a0468

    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 1244
    invoke-super {p0, p1, p2, p3}, Lcom/adobe/premiereclip/editor/TopOfEditorActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1245
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 1246
    if-ne p2, v1, :cond_2

    .line 1248
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1249
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "authAccount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1250
    if-eqz v0, :cond_0

    .line 1251
    invoke-static {p0}, Lcom/adobe/premiereclip/ClipPreferences;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/ClipPreferences;

    move-result-object v1

    const-string/jumbo v2, "googleAccount"

    invoke-virtual {v1, v2, v0}, Lcom/adobe/premiereclip/ClipPreferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mGallerySource:Lcom/adobe/premiereclip/mediabrowser/source/GallerySource;

    if-eqz v0, :cond_1

    .line 1253
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mGallerySource:Lcom/adobe/premiereclip/mediabrowser/source/GallerySource;

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;

    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;->setCredential(Landroid/content/Context;)V

    .line 1254
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->loadSourceData()V

    .line 1311
    :cond_0
    :goto_0
    return-void

    .line 1256
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mFileSystemSource:Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource;

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;

    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;->setCredential(Landroid/content/Context;)V

    .line 1257
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->loadFileSystemData()V

    goto :goto_0

    .line 1262
    :cond_2
    invoke-static {p0}, Lcom/adobe/premiereclip/ClipPreferences;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/ClipPreferences;

    move-result-object v0

    const-string/jumbo v1, "googleAccount"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/ClipPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1263
    if-nez v0, :cond_0

    .line 1264
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->textView:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1265
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->textViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1266
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->signInButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1267
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->signInButton:Landroid/widget/Button;

    new-instance v1, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$19;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$19;-><init>(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1277
    :cond_3
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1278
    if-ne p2, v1, :cond_5

    .line 1279
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mGallerySource:Lcom/adobe/premiereclip/mediabrowser/source/GallerySource;

    if-eqz v0, :cond_4

    .line 1280
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->loadSourceData()V

    goto :goto_0

    .line 1281
    :cond_4
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mFileSystemSource:Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource;

    if-eqz v0, :cond_0

    .line 1282
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->loadFileSystemData()V

    goto :goto_0

    .line 1285
    :cond_5
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mAdapter:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;

    if-eqz v0, :cond_6

    .line 1286
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mAdapter:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->clearDataset()V

    .line 1288
    :cond_6
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mGalleryAdapterForFileSystem:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;

    if-eqz v0, :cond_7

    .line 1289
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mGalleryAdapterForFileSystem:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->clearDataset()V

    .line 1290
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mGalleryAdapterForFileSystem:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->clearStack()V

    .line 1293
    :cond_7
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->sourceName:Ljava/lang/String;

    const-string/jumbo v1, "dropbox"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1294
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->textView:Landroid/widget/TextView;

    const v1, 0x7f0a0467

    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1295
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->signInButton:Landroid/widget/Button;

    const v1, 0x7f0a0466

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 1299
    :goto_1
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->textViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1300
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->signInButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1301
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->signInButton:Landroid/widget/Button;

    new-instance v1, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$20;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$20;-><init>(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 1297
    :cond_8
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->textView:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public final onBackPressed()V
    .locals 2

    .prologue
    .line 1316
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mGalleryAdapterForFileSystem:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mGalleryAdapterForFileSystem:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->isStackEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1317
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mGalleryAdapterForFileSystem:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->backPressed()V

    .line 1324
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mGallerySource:Lcom/adobe/premiereclip/mediabrowser/source/GallerySource;

    if-eqz v0, :cond_1

    .line 1325
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mGallerySource:Lcom/adobe/premiereclip/mediabrowser/source/GallerySource;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/source/GallerySource;->cancelDataFetch()V

    .line 1327
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mProgressDialog:Lcom/alertdialogpro/b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mProgressDialog:Lcom/alertdialogpro/b;

    invoke-virtual {v0}, Lcom/alertdialogpro/b;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1328
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->dismissSpinner()V

    .line 1330
    :cond_2
    const v0, 0x7f05002d

    const v1, 0x7f05002e

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->overridePendingTransition(II)V

    .line 1331
    return-void

    .line 1319
    :cond_3
    invoke-super {p0}, Lcom/adobe/premiereclip/editor/TopOfEditorActivity;->onBackPressed()V

    .line 1320
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mFileSystemSource:Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource;

    if-eqz v0, :cond_0

    .line 1321
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mFileSystemSource:Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource;->cancelDataFetch()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/16 v3, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 163
    invoke-super {p0, p1}, Lcom/adobe/premiereclip/editor/TopOfEditorActivity;->onCreate(Landroid/os/Bundle;)V

    .line 164
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 165
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 166
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 167
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c02eb

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 168
    iget v2, v1, Landroid/graphics/Point;->x:I

    mul-int/lit8 v0, v0, 0x5

    sub-int v0, v2, v0

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->timelineThumbSize:I

    .line 170
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c02ec

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 171
    iget v1, v1, Landroid/graphics/Point;->x:I

    mul-int/lit8 v0, v0, 0x5

    sub-int v0, v1, v0

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->imageSize:I

    .line 172
    const v0, 0x7f040025

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->setContentView(I)V

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mSelectedMediaList:Ljava/util/ArrayList;

    .line 174
    const v0, 0x7f120130

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mDoneButton:Landroid/widget/Button;

    .line 175
    const v0, 0x7f120128

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mBackButton:Landroid/widget/ImageView;

    .line 176
    const v0, 0x7f12012a

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->titleTextView:Landroid/widget/TextView;

    .line 177
    const v0, 0x7f12012c

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 178
    const v0, 0x7f0a040e

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mDoneString:Ljava/lang/String;

    .line 179
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 181
    const v0, 0x7f12012d

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->textViewLayout:Landroid/widget/RelativeLayout;

    .line 182
    const v0, 0x7f12012f

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->signInButton:Landroid/widget/Button;

    .line 183
    const v0, 0x7f12012e

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->textView:Landroid/widget/TextView;

    .line 184
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->textView:Landroid/widget/TextView;

    const v1, 0x7f0a0468

    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->textViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 187
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 188
    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 190
    invoke-static {}, Lcom/adobe/utility/FontUtils;->getInstance()Lcom/adobe/utility/FontUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/adobe/utility/FontUtils;->initializeTypefaceCollections(Landroid/content/Context;)V

    .line 191
    invoke-static {}, Lcom/adobe/utility/FontUtils;->getInstance()Lcom/adobe/utility/FontUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/utility/FontUtils;->getAdobeCleanLightTypefaceCollection()Lcom/h/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->tfCollection:Lcom/h/a/a;

    .line 192
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mDoneButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->tfCollection:Lcom/h/a/a;

    invoke-static {v0, v1}, Lcom/h/a/d;->a(Landroid/view/View;Lcom/h/a/a;)V

    .line 193
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->titleTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->tfCollection:Lcom/h/a/a;

    invoke-static {v0, v1}, Lcom/h/a/d;->a(Landroid/view/View;Lcom/h/a/a;)V

    .line 194
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->tfCollection:Lcom/h/a/a;

    invoke-static {v0, v1}, Lcom/h/a/d;->a(Landroid/view/View;Lcom/h/a/a;)V

    .line 195
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->signInButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->tfCollection:Lcom/h/a/a;

    invoke-static {v0, v1}, Lcom/h/a/d;->a(Landroid/view/View;Lcom/h/a/a;)V

    .line 197
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 198
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 201
    iput-boolean v4, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->cancelAssetDownload:Z

    .line 202
    iput-boolean v4, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->cancelThumbnailDownload:Z

    .line 203
    iput-boolean v4, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->switchingAccount:Z

    .line 205
    const v0, 0x7f120106

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 206
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f130013

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->inflateMenu(I)V

    .line 207
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    new-instance v1, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$1;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$1;-><init>(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setOnMenuItemClickListener(Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;)V

    .line 214
    new-instance v0, Lcom/adobe/premiereclip/mediabrowser/SourceListAdapter;

    sget-object v1, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->sourceNames:[Ljava/lang/String;

    new-instance v2, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$2;

    invoke-direct {v2, p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$2;-><init>(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/adobe/premiereclip/mediabrowser/SourceListAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;Lcom/adobe/premiereclip/mediabrowser/SourceListAdapter$SourceChangeListener;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mSourceListAdapter:Lcom/adobe/premiereclip/mediabrowser/SourceListAdapter;

    .line 235
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->popupWindow:Landroid/widget/PopupWindow;

    .line 236
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040139

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 237
    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 238
    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02003a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 240
    const v1, 0x7f12051e

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mSourceListView:Landroid/support/v7/widget/RecyclerView;

    .line 241
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mSourceListView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mSourceListAdapter:Lcom/adobe/premiereclip/mediabrowser/SourceListAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 242
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mSourceListView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$3;

    invoke-direct {v1, p0, p0, v5, v4}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$3;-><init>(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 257
    invoke-static {v5}, Lcom/adobe/premiereclip/coachmarks/ScreenUtil;->getWidthInPx(I)F

    move-result v0

    .line 258
    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, v0

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 260
    iget-object v2, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 261
    iget-object v2, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->popupWindow:Landroid/widget/PopupWindow;

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 263
    iget-object v2, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 265
    const v2, 0x7f120129

    invoke-virtual {p0, v2}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$4;

    invoke-direct {v3, p0, v0, v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$4;-><init>(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;FI)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 275
    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->sourceName:Ljava/lang/String;

    .line 276
    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->sourceName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->getSource(Ljava/lang/String;)V

    .line 278
    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->signInButton:Landroid/widget/Button;

    new-instance v2, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$5;

    invoke-direct {v2, p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$5;-><init>(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    const-string/jumbo v1, "media_type"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 286
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_0

    .line 287
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->enabledMediaTypes:Ljava/util/ArrayList;

    .line 288
    iget-object v2, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->enabledMediaTypes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    :cond_0
    const-string/jumbo v1, "single_selection"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->singleSelection:Z

    .line 292
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1229
    invoke-super {p0}, Lcom/adobe/premiereclip/editor/TopOfEditorActivity;->onDestroy()V

    .line 1230
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 1231
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 1232
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 1233
    iput-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 1235
    :cond_0
    return-void
.end method

.method public onMediaItemSelection(Lcom/adobe/premiereclip/mediabrowser/MediaModel;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1339
    invoke-virtual {p1}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->isMediaSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1340
    const-string/jumbo v0, "GALLERY"

    const-string/jumbo v1, "adding media"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mSelectedMediaList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1351
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mSelectedMediaList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 1352
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mDoneButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1353
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 1354
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mDoneButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mDoneString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1355
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1364
    :goto_1
    return-void

    .line 1343
    :cond_1
    const-string/jumbo v0, "GALLERY"

    const-string/jumbo v1, "Removing media"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mSelectedMediaList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    .line 1345
    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1346
    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mSelectedMediaList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1357
    :cond_3
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1358
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 1359
    const/high16 v1, 0x42480000    # 50.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 1360
    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v4, v4, v4, v0}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 1361
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mDoneButton:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mDoneString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mSelectedMediaList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1362
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mDoneButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method

.method public onMediaReplacement(Lcom/adobe/premiereclip/mediabrowser/MediaModel;)V
    .locals 0

    .prologue
    .line 1372
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 762
    invoke-super {p0}, Lcom/adobe/premiereclip/editor/TopOfEditorActivity;->onPause()V

    .line 763
    invoke-static {}, Lcom/adobe/mobile/Config;->pauseCollectingLifecycleData()V

    .line 764
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const v4, 0x7f0a0467

    const v3, 0x7f0a0466

    const/4 v2, 0x0

    .line 708
    const-string/jumbo v0, "GALLERY"

    const-string/jumbo v1, "onresume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    invoke-super {p0}, Lcom/adobe/premiereclip/editor/TopOfEditorActivity;->onResume()V

    .line 710
    invoke-static {p0}, Lcom/adobe/mobile/Config;->collectLifecycleData(Landroid/app/Activity;)V

    .line 712
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->sourceName:Ljava/lang/String;

    const-string/jumbo v1, "dropbox"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 713
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mGalleryAdapterForFileSystem:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;

    if-nez v0, :cond_3

    .line 714
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->photosDownloadDialog:Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;

    if-nez v0, :cond_0

    .line 715
    const-string/jumbo v0, "GALLERY"

    const-string/jumbo v1, "photos dialog null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->loadAuth()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->getClient()Lcom/dropbox/core/v2/DbxClientV2;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 717
    const-string/jumbo v0, "GALLERY"

    const-string/jumbo v1, "if: loadAuth is true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->loadFileSystemData()V

    .line 758
    :cond_0
    :goto_0
    return-void

    .line 720
    :cond_1
    const-string/jumbo v0, "GALLERY"

    const-string/jumbo v1, "if: loadAuth is false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->storeAuth()Z

    move-result v0

    .line 722
    if-eqz v0, :cond_2

    .line 723
    const-string/jumbo v0, "GALLERY"

    const-string/jumbo v1, "if: storeAuth is true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->loadFileSystemData()V

    goto :goto_0

    .line 726
    :cond_2
    const-string/jumbo v0, "GALLERY"

    const-string/jumbo v1, "if: storeAuth is false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->textViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 728
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->textView:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 729
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->signInButton:Landroid/widget/Button;

    invoke-virtual {p0, v3}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 730
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->signInButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 735
    :cond_3
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->photosDownloadDialog:Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->photosDownloadDialog:Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 736
    :cond_4
    const-string/jumbo v0, "GALLERY"

    const-string/jumbo v1, "photos dialog not showing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->switchingAccount:Z

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->loadAuth()Z

    move-result v0

    if-nez v0, :cond_0

    .line 738
    :cond_5
    const-string/jumbo v0, "GALLERY"

    const-string/jumbo v1, "else: loadAuth is false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->switchingAccount:Z

    if-eqz v0, :cond_6

    .line 740
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->storeAuth()Z

    move-result v0

    .line 741
    if-eqz v0, :cond_0

    .line 742
    const-string/jumbo v0, "GALLERY"

    const-string/jumbo v1, "else: storeAuth is true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->loadFileSystemData()V

    goto/16 :goto_0

    .line 746
    :cond_6
    const-string/jumbo v0, "GALLERY"

    const-string/jumbo v1, "!loadauth, !switchingaccount"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->textViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 748
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->textView:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 749
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->signInButton:Landroid/widget/Button;

    invoke-virtual {p0, v3}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 750
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->signInButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 751
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mGalleryAdapterForFileSystem:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->clearStack()V

    .line 752
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mGalleryAdapterForFileSystem:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->clearDataset()V

    goto/16 :goto_0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 1220
    invoke-super {p0}, Lcom/adobe/premiereclip/editor/TopOfEditorActivity;->onStart()V

    .line 1221
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->registerNetworkChangeNotification()V

    .line 1222
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 1239
    invoke-super {p0}, Lcom/adobe/premiereclip/editor/TopOfEditorActivity;->onStop()V

    .line 1240
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->unRegisterNetworkChangeNotification()V

    .line 1241
    return-void
.end method

.method public setCancelDownload(Z)V
    .locals 0

    .prologue
    .line 779
    iput-boolean p1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->cancelAssetDownload:Z

    .line 780
    return-void
.end method

.method public setCancelThumbnailDownload(Z)V
    .locals 0

    .prologue
    .line 544
    iput-boolean p1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->cancelThumbnailDownload:Z

    .line 545
    return-void
.end method

.method public setTextView(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 345
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 348
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->textViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 349
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    const v0, 0x7f0a0468

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->signInButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 352
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->signInButton:Landroid/widget/Button;

    new-instance v1, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$6;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$6;-><init>(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    :goto_0
    return-void

    .line 361
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->signInButton:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    return-void
.end method

.method showDoneButton()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 334
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mSelectedMediaList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 336
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 337
    const/high16 v1, 0x42480000    # 50.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 338
    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v2, v2, v2, v0}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 339
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mDoneButton:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mDoneString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mSelectedMediaList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 340
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mDoneButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 342
    :cond_0
    return-void
.end method

.method public showErrorToast()V
    .locals 1

    .prologue
    .line 1389
    new-instance v0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$21;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$21;-><init>(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)V

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1395
    return-void
.end method

.method public showSpinner()V
    .locals 2

    .prologue
    .line 783
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mProgressDialog:Lcom/alertdialogpro/b;

    if-nez v0, :cond_1

    .line 784
    const-string/jumbo v0, "GALLERY"

    const-string/jumbo v1, "progress bar null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    const-string/jumbo v0, ""

    const v1, 0x7f0a0527

    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/alertdialogpro/b;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/alertdialogpro/b;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mProgressDialog:Lcom/alertdialogpro/b;

    .line 786
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mProgressDialog:Lcom/alertdialogpro/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alertdialogpro/b;->setCancelable(Z)V

    .line 787
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mProgressDialog:Lcom/alertdialogpro/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alertdialogpro/b;->setCanceledOnTouchOutside(Z)V

    .line 788
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mProgressDialog:Lcom/alertdialogpro/b;

    new-instance v1, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$12;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$12;-><init>(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)V

    invoke-virtual {v0, v1}, Lcom/alertdialogpro/b;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 807
    :cond_0
    :goto_0
    return-void

    .line 801
    :cond_1
    const-string/jumbo v0, "GALLERY"

    const-string/jumbo v1, "progress bar not null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mProgressDialog:Lcom/alertdialogpro/b;

    invoke-virtual {v0}, Lcom/alertdialogpro/b;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 803
    const-string/jumbo v0, "GALLERY"

    const-string/jumbo v1, "progress bar not showing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mProgressDialog:Lcom/alertdialogpro/b;

    invoke-virtual {v0}, Lcom/alertdialogpro/b;->show()V

    goto :goto_0
.end method

.method showView()V
    .locals 2

    .prologue
    .line 325
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->isNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 326
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    const v0, 0x7f0a043c

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->setTextView(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateProgress(I)V
    .locals 1

    .prologue
    .line 1187
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->photosDownloadDialog:Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;

    if-eqz v0, :cond_0

    .line 1188
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->photosDownloadDialog:Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;->addProgress(I)V

    .line 1190
    :cond_0
    return-void
.end method
