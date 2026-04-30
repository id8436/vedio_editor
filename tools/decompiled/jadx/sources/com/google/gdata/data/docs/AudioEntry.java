package com.google.gdata.data.docs;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.Category;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.Kind;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(AudioEntry.KIND)
public class AudioEntry extends DocumentListEntry {
    public static final String LABEL = "audio";
    public static final String KIND = "http://schemas.google.com/docs/2007#audio";
    public static final Category CATEGORY = new Category("http://schemas.google.com/g/2005#kind", KIND, "audio");

    public AudioEntry() {
        getCategories().remove(DocumentListEntry.CATEGORY);
        getCategories().add(CATEGORY);
    }

    public AudioEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
    }

    @Override // com.google.gdata.data.docs.DocumentListEntry, com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(AudioEntry.class)) {
            super.declareExtensions(extensionProfile);
            extensionProfile.declare(AudioEntry.class, Album.class);
            extensionProfile.declare(AudioEntry.class, AlbumArt.class);
            extensionProfile.declare(AudioEntry.class, AlbumArtist.class);
            extensionProfile.declare(AudioEntry.class, Artist.class);
            extensionProfile.declare(AudioEntry.class, Composer.class);
            extensionProfile.declare(AudioEntry.class, Duration.class);
            extensionProfile.declare(AudioEntry.class, Genre.class);
            extensionProfile.declare(AudioEntry.class, Size.class);
            extensionProfile.declare(AudioEntry.class, Track.class);
            extensionProfile.declare(AudioEntry.class, Year.class);
        }
    }

    public Album getAlbum() {
        return (Album) getExtension(Album.class);
    }

    public void setAlbum(Album album) {
        if (album == null) {
            removeExtension(Album.class);
        } else {
            setExtension(album);
        }
    }

    public boolean hasAlbum() {
        return hasExtension(Album.class);
    }

    public AlbumArt getAlbumArt() {
        return (AlbumArt) getExtension(AlbumArt.class);
    }

    public void setAlbumArt(AlbumArt albumArt) {
        if (albumArt == null) {
            removeExtension(AlbumArt.class);
        } else {
            setExtension(albumArt);
        }
    }

    public boolean hasAlbumArt() {
        return hasExtension(AlbumArt.class);
    }

    public AlbumArtist getAlbumArtist() {
        return (AlbumArtist) getExtension(AlbumArtist.class);
    }

    public void setAlbumArtist(AlbumArtist albumArtist) {
        if (albumArtist == null) {
            removeExtension(AlbumArtist.class);
        } else {
            setExtension(albumArtist);
        }
    }

    public boolean hasAlbumArtist() {
        return hasExtension(AlbumArtist.class);
    }

    public Artist getArtist() {
        return (Artist) getExtension(Artist.class);
    }

    public void setArtist(Artist artist) {
        if (artist == null) {
            removeExtension(Artist.class);
        } else {
            setExtension(artist);
        }
    }

    public boolean hasArtist() {
        return hasExtension(Artist.class);
    }

    public Composer getComposer() {
        return (Composer) getExtension(Composer.class);
    }

    public void setComposer(Composer composer) {
        if (composer == null) {
            removeExtension(Composer.class);
        } else {
            setExtension(composer);
        }
    }

    public boolean hasComposer() {
        return hasExtension(Composer.class);
    }

    public Duration getDuration() {
        return (Duration) getExtension(Duration.class);
    }

    public void setDuration(Duration duration) {
        if (duration == null) {
            removeExtension(Duration.class);
        } else {
            setExtension(duration);
        }
    }

    public boolean hasDuration() {
        return hasExtension(Duration.class);
    }

    public Genre getGenre() {
        return (Genre) getExtension(Genre.class);
    }

    public void setGenre(Genre genre) {
        if (genre == null) {
            removeExtension(Genre.class);
        } else {
            setExtension(genre);
        }
    }

    public boolean hasGenre() {
        return hasExtension(Genre.class);
    }

    public Size getSize() {
        return (Size) getExtension(Size.class);
    }

    public void setSize(Size size) {
        if (size == null) {
            removeExtension(Size.class);
        } else {
            setExtension(size);
        }
    }

    public boolean hasSize() {
        return hasExtension(Size.class);
    }

    public Track getTrack() {
        return (Track) getExtension(Track.class);
    }

    public void setTrack(Track track) {
        if (track == null) {
            removeExtension(Track.class);
        } else {
            setExtension(track);
        }
    }

    public boolean hasTrack() {
        return hasExtension(Track.class);
    }

    public Year getYear() {
        return (Year) getExtension(Year.class);
    }

    public void setYear(Year year) {
        if (year == null) {
            removeExtension(Year.class);
        } else {
            setExtension(year);
        }
    }

    public boolean hasYear() {
        return hasExtension(Year.class);
    }
}
