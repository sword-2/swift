import ArgumentParser


/// Try to parse input arguments similar to the original xml2gbs
/// - Parameters:
///   - book: like a SWORD module
///   - key: like a verse reference
/// - Returns: unsur, but upon detecting an error, a help message is printed
/// > Note: GNU autogen also did something similar for C/C++
/// > Warning: a build error occurred after trying to change struct to class
/// ``cli``
public struct cli: ParsableCommand {

    @Argument(help: "book/SWORD module. If the value is system you may use these system keys: modulelist modulelistnames bibliography and localelist")
    var book: String

    @Argument(help: "query_key. The query_key must be the last argument because all following arguments are added to the key.")
    var key: String

    @Option(help: "search_type. Valid search_type values are: phrase, regex, multiword, attribute,lucene, multilemma.")
    var search: String
    
    
    @Option(help: "search_range.")
    var range: String
    
    @Option(help: "output / option_filters. Valid (output) option_filters values are: n (Strong's numbers), f (Footnotes), m (Morphology), h (Section Headings), c (Cantillation), v (Hebrew Vowels), a (Greek Accents), p (Arabic Vowels), l (Lemmas), s (Scripture Crossrefs), r (Arabic Shaping), b (Bi-Directional Reordering), w (Red Words of Christ), g (Glosses/Ruby), e (Word Enumerations), i (Intros), x (Encoded Transliterations), t (Algorithmic Transliterations via ICU), M (morpheme segmentation)")
    var output: String

    @Option(help: "maximum_verses. Maximum verses may be any integer value")
    var max_verses: Int? = nil

    @Option(help: "output_format. Valid output_format values are: CGI, GBF, HTML, HTMLHREF, LaTeX, OSIS, RTF, ThML, WEBIF, XHTML, plain, and internal (def). The option LaTeX will produce a compilable document, but may well require tweaking to be usable.") 
    var f: String

    @Option(help: "output_encoding. Valid output_encoding values are: Latin1, UTF8 (def), UTF16, HTML, RTF, and SCSU")
    var encoding: String

    @Option(help: "variant; #(-1=all|0|1)")
    var variant: Int? = nil

    @Option(help: "locale. Valid locale values depend on installed locales. en is default.")
    var locale: String


    public init() { //try to prevent an error during build
    }

    public mutating func run() throws {
        print("Example usage")
        print("  diatheke -b KJV -o fmnx -k Jn 3:16");
        print("  diatheke -b WHNU -t Latin -o mn -k Mt 24");
        print("  diatheke -b KJV -s phrase -r Mt -k love");

/*
        let repeatCount = count ?? 2

        for i in 1...repeatCount {
            if includeCounter {
                print("\(i): \(phrase)")
            } else {
                print(phrase)
            }
        }
*/
    }
}

/* original boilerplate code

NAME
       xml2gbs - OSIS/ThML General Book module creation tool

SYNOPSIS
       xml2gbs [OPTIONS] SOURCE [MODULENAME]

DESCRIPTION
       This is a tool to create SWORD general book modules from OSIS/ThML sourse. A module name can be optionally specified.

OPTIONS
       -l  Use long div names in the ThML files.

       -i  exports to IMP formal instead of creating a module.

       -fT|-fO
           Set the importer to ThML or OSIS format respectively. By default it attempts to autodetect.
*/
