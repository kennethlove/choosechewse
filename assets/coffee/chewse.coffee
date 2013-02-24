$ ->
    $('.followup .slim').hide()

list = [
    "At first you were afraid of doing a remote hire.",
    "Kept thinking you couldn't do work without me by your side.",
    "But then I found so many links, companies doing it all along.",
    "Don't take it wrong. I want to get along!",
    "And so I'm back from Internet space!",
    "You just opened up this site to find my rewrite in your face.",
    "I should have taken more time.",
    "I should have written a better rhyme.",
    "But I only have a few seconds to convince you to",
    "hire me!"
]
txt = $(".cheesy>.slim")
options =
    duration: 1000
    rearrangeDuration: 500
    effect: 'slideTop'
    centered: true
txt.textualizer(list, options)

txt.on 'textualizer.changed', (event, args) ->
    if args.index == 9
        $('.followup .slim').show 'fast'
        txt.textualizer 'pause'

txt.textualizer 'start'
