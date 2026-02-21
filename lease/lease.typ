#import "lease-variables.typ" as defs

#let landlord = "Ji Yang"
#let bank_info = "Wells Fargo ACCT. # 6403267096, Routing #: 121042882"
#let landlord_phone = "925-725-5050"
#let landlord_email = "ji@codemanic.com"
#let tenants = if type(defs.tenants) == str { (defs.tenants,) } else { defs.tenants }
#let address = defs.address
#let term_start = defs.term_start
#let term_end = defs.term_end
#let rent = defs.rent
#let security_deposit = defs.security_deposit
#let cleaning_fee = defs.cleaning_fee
#let execution_city = defs.execution_city


#set text(font: "Times New Roman", size: 11pt)
#set page(
  margin: (x: 1in, y: 1in),
  footer: context [
    #set text(size: 9pt)
    #line(length: 100%, stroke: 0.5pt)
    #let current_page = counter(page).get().at(0)
    #let total_pages = counter(page).final().at(0)
    #grid(
      columns: (1fr, 1fr, 1fr),
      align: (left, center, right),
      [],
      [Page #current_page of #total_pages],
      if current_page <= total_pages - 2 [
        Tenant Initials: #box(width: 6em, stroke: (bottom: 0.5pt), outset: (bottom: 2pt))
      ],
    )
  ],
  header: context [
    #if counter(page).get().at(0) > 1 {
      set text(size: 9pt, style: "italic")
      [Residential Lease Agreement -- #address]
      line(length: 100%, stroke: 0.5pt)
    }
  ],
)
#set par(justify: true, leading: 0.65em)
#set heading(numbering: "1.")

// Custom heading style for "ARTICLE"
#show heading.where(level: 1): it => {
  set text(size: 12pt, weight: "bold")
  v(2.5em, weak: true)
  if it.numbering != none {
    [ARTICLE ] + counter(heading).display(it.numbering) + [ ] + upper(it.body)
  } else {
    upper(it.body)
  }
  v(1.2em, weak: true)
}

#show heading.where(level: 2): it => {
  set text(size: 11pt, weight: "bold")
  v(0.8em, weak: true)
  it
  v(0.4em, weak: true)
}

// Formal Title Card
#align(center)[
  #text(size: 18pt, weight: "bold")[RESIDENTIAL LEASE AGREEMENT] \
  #v(0.5em)
  #text(size: 13pt)[#address] \
  #v(1em)
  #line(length: 60%, stroke: 1pt)
]

#v(2em)

= Preamble

This Residential Lease Agreement (the "Lease") is entered into by and between *#landlord* (hereinafter "Landlord"), and *#tenants.join(", ", last: " and ")* (hereinafter jointly and severally referred to as "Tenant"), on the date set forth on the signature page below. Landlord hereby leases to Tenant, and Tenant leases from Landlord, those premises commonly referred to as #address (hereinafter the "Premises").

Unless otherwise stated, all provisions prescribed by this Lease to "Landlord" shall also apply to Landlord's rental agent/property manager(s) which Landlord may elect to utilize at any time.

= Term

The term of this Lease shall commence on *#term_start* and shall continue for a fixed term (the "Term"), expiring on *#term_end*.

= Rent

#rent in advance on or before the first day of each month of the Term. Rent shall be deposited directly to the bank account specified in Article 32 below, in a timely fashion to ensure receipt thereof on or before the due date.

If Landlord has not received any rent payment within five (5) days after rent becomes due pursuant to the provisions of this Lease, Tenant shall pay a late charge of *five percent (5.0%)* of the payment amount plus interest at *10%* per month on the delinquent amount. Landlord and Tenant hereby agree that it is impracticable and extremely difficult to fix the actual damages suffered by Landlord in the event Tenant makes a late payment of rent, and that the above charge represents a reasonable approximation of the damages Landlord is likely to suffer from such a late payment. Landlord and Tenant further agree that this provision does not establish a grace period for the payment of rent, and that Landlord may make a written demand for the payment of rent on the second day after the date due. Tenant further agrees to pay \$25 for each dishonored bank check. Landlord may require any and all future payments to be made via certified funds only.

= Parking
The Premises includes driveway and street parking.

= Security Deposit
Upon execution of this Lease, Tenant will pay the security deposit in the amount of *#security_deposit*. Landlord will hold this security deposit for the fulfillment of Tenant's obligations under this Lease, and for the cleaning and repairing of the Premises, if necessary, after Tenant vacates the Premises. After Tenant has vacated the Premises, Landlord will return the full amount of the security deposit minus *#cleaning_fee* and any amounts that are reasonably necessary to rectify any defaults in the payment of rent, to repair damages to the Premises caused by Tenant, other than ordinary wear and tear, and to clean the Premises if required. This deposit shall not be used or applied by the Tenant as a substitute for rent for any month.

= Utilities
If applicable, the Tenant shall have all applicable utilities transferred to their name on the effective date of the Lease.

A lockout fee of fifty dollars (\$50) will be charged to Tenant if Tenant requests Landlord to open door of described Premises.

Landlord agrees to pay for gardening maintenance. Landlord agrees to pay for Internet for one (1) year.

Tenant agrees to pay all utilities and, when possible, pay them directly to the supplying utility company, all charges for the utilities used on the Premises including: *PSE, additional internet/cable TV, garbage, and water.*

= Furniture, Furnishings, and Equipment Furnished
The Premises are partially furnished. The Premises are equipped with furnace, hot water heater, plumbing fixtures, electrical fixtures, range, washer/dryer, and refrigerator.

= Occupants
The Premises may only be used as a residence or permanently occupied by the following persons unless otherwise allowed by law:

#for tenant in tenants [
  - #tenant
]

Guests staying more than a total of fifteen (15) days in a calendar year without Landlord's prior written consent shall constitute a default hereunder.

= Rent Control Ordinance
This unit is *not* subject to any rent stabilizing provisions.

= Physical Possession
Landlord shall not be liable for any damages if Landlord is unable to timely deliver possession of the Premises. Tenant shall not be liable for rent until possession is delivered. Tenant may terminate this contract on three (3) days' written notice if possession is not delivered within ten (10) days of the commencement of the Term and Landlord shall refund all money paid by Tenant.

= Use and Activities
(A) *House Rules*: Tenant agrees to comply with all reasonable rules or regulations posted on the Premises or delivered to Tenant by Landlord.

(B) *Water Furniture*: Tenant shall not have a waterbed or water furniture on the Premises without Landlord's prior written consent.

(C) *Insurance*: Tenant shall not use the Premises in such a way or commit acts which will cause an increase in the existing rate of insurance on the Premises or cause a cancellation of any such insurance.

(D) *No Pets*: Tenant agrees that no animal, dog, cat, bird or other pet of any kind shall be kept on the Premises without Landlord's prior written consent. If such written consent is provided, *TENANT WILL POST AN ADDITIONAL PET DEPOSIT, OF ONE THOUSAND DOLLARS (\$1,000).* LANDLORD, AT HIS SOLE DISCRETION, SHALL PERFORM AN INSPECTION TO DETERMINE PET RELATED DAMAGE. LANDLORD MAY RETURN SAID PET DEPOSIT, WITHOUT INTEREST, TO TENANT UPON A SATISFACTORY DAMAGE INSPECTION.

(E) *Quiet Enjoyment*: Tenant shall not make or permit any noise which will disturb other tenants. Tenant is responsible for insuring that disturbing noises are not caused by Tenant's family or guests.

(F) *Use of Leased Premises*: Tenant agrees that the Premises are to be used exclusively as the living quarters of Tenant and shall not be used for any other purpose. Tenant shall not do or permit anything to be done on the leased Premises that will in any way interfere with the rights of other tenants, occupants, or neighbors, or to injure or annoy such persons. Tenant shall not use, nor allow the Premises to be used, for any improper, unlawful, or objectionable purpose. Additionally, Tenant shall not cause, maintain, or permit any nuisance in, on, or about the Premises, or commit any waste in or on the Premises. Furthermore, Tenant shall not put the Premises to any use that violates any local zoning ordinance or any other law applicable to the Premises.

(G) *No Alterations*: Tenant shall not paint, wallpaper or otherwise redecorate, change light fixtures, install any accessories such as shelves, or make alterations or required repairs to the Premises without Landlord's prior written consent.

Tenant shall not remove, replant plants, trees and flowers in front yard and backyard without Landlord's prior written consent.

Tenant shall notify Landlord prior to telephone or cable installation/activation dates in order that Landlord may instruct telephone/cable personnel regarding access and hookup to existing house wiring.

Any alterations made to the Premises by Tenant after such consent is obtained, and any fixtures installed as a part of that alteration, will at Landlord's option become the Landlord's property on the expiration or the earlier termination of this Lease; provided, however, that Landlord shall have the right to require Tenant to remove any such fixtures at Tenant's cost on termination of this Lease.

(H) *Refuse*: Tenant agrees to wrap all garbage and deposit it in containers provided by the City and shall pay for the removal of all garbage or refuse, including any unusual or bulky garbage or refuse. Tenant further agrees to separate recyclable waste and dispose of it in the appropriate supplied recycling containers provided.

(I) *Wall Hangings*: Tenant shall not use adhesive picture hangers of any kind. Only thin nails or pins shall be used to hang pictures. No planters, plants or lamps may be hung from the ceiling or walls of the Premises without Landlord's prior written consent. Tenant may be charged for costs of repair or painting required as a result of holes or marks caused by the hanging of pictures or other objects.

(J) *Exposed Wood Moldings, Trim, Mantels, Sills, etc.*: Tenant shall ensure that all wood moldings and trim are maintained to the same level they were found in at the beginning of the tenancy, e.g. by non-use, or by use of coasters, doilies, mats, cloth, or other protective material so as not to leave scratches, rings, or other damage.

(K) *Fires in Fireplace*: Operation of the fireplaces is at Tenant's own risk and responsibility. At a minimum they should be checked and approved by an employee of the gas company prior to use.

(L) *Outward Appearance*: Any decorating that will affect the Premises' outward appearance must be approved by Landlord. No articles, including garbage cans, shall be placed in the common hallways or landings outside the Premises. Tenant shall not erect any external television or radio antennas, satellite dishes, etc. without Landlord's prior written consent.

(M) *Rules and Regulations*: Tenant and any guests of Tenant shall obey all of the laws of the State of Washington (e.g. shoveling sidewalk in front of property, etc.), as well as all local laws, at all times while they are on the Premises. These rules may change or be amended from time to time, and Tenant is responsible for having knowledge of, and obeying, the rules which are in effect at any given time.

= Default by Tenant
Landlord and Tenant agree that every condition, covenant, and provision of this Lease is material. A breach of any condition, covenant, or provision of this Lease by Tenant will constitute a material breach. For any material breach by Tenant, Landlord may elect to: (a) continue this contract in effect and enforce all Landlord's rights and remedies hereunder, including the right to recover rent as it becomes due; or (b) at any time, terminate all Tenant's rights hereunder in the manner required by law.

In the event of breach by Tenant, Landlord reserves all rights and remedies conferred under the laws of the State of Washington, including the right to terminate the Lease, the right to immediate possession of the Premises, and the right to all damages. Additionally, the parties agree that the following provisions apply to a breach of this Lease by Tenant:

If Tenant breaches this Lease and abandons the property before the end of the term, or if Landlord terminates Tenant's right to possession because of Tenant's breach of this Lease, Tenant may be responsible for lost rent, rental commissions, advertising expenses and painting costs necessary to ready Premises for re-rental. Landlord may withhold any such amounts from Tenant's security deposit.

= Abandonment
If Tenant abandons or vacates the Premise, Landlord may, at Landlord's option, terminate this contract and regain possession in the manner prescribed by law. Landlord may consider any property left on the Premises to be abandoned and may dispose of the same in any manner allowed by law, within the guidelines of the 24 hour notice requirement of section 22.

= Assignment and Subletting
Tenant may not assign this Lease or sublet all or any portion of the leased Premises, without first obtaining Landlord's written consent. Landlord may consider all factors in granting or withholding such consent, including such assignee's or sub-lessee's financial and credit history or lack thereof. Upon making any request for such approval Tenant shall pay a one hundred dollar (\$100) service charge, and complete the sublet and assignee forms, per assignee or sublet Tenant. Landlord's consent to any assignment or sublease shall not relieve Tenant of any obligations under this Lease, and shall specifically not relieve Tenant from Tenant's obligation to pay rent as set forth in this Lease. The consent of Landlord to any one assignment or subletting shall not be deemed to be a general consent to any subsequent assignment or subletting.

Tenant may not use Airbnb, HomeAway, or FlipKey or similar services to sublet Premises.

In the event of one or more of a number of Tenants vacating the Premises, the remaining Tenant(s) shall notify Landlord in writing 30 days beforehand of which Tenant(s) will be moving. The remaining Tenant(s) must then satisfy Landlord's reasonable financial condition and credit worthiness standards.

= Individual Tenant Liability
Where the Premises are rented by more than one tenant, each shall be jointly and severally responsible for the full amount of the rent or other obligations hereunder.

= Maintenance, Repairs or Alterations
Tenant acknowledges that Tenant has inspected the Premises and furnishings, if any, and finds them in good condition and repair. Any defects found upon the date of occupancy shall be submitted in writing that same day to Landlord. Tenant shall, at Tenant's own expense and at all times, maintain the Premises and furnishings, if any, in clean and good condition and shall surrender the same on expiration or termination hereof in as good condition as received excepting normal wear and tear. Tenant covenants to: Furnish Tenant's own light bulbs and furnace filters; to replace at tenant's own expense furnace filters once a year; to replace at Tenant's own expense all faucet washers as necessary; to replace or repair all broken or damaged glass, screens, flooring, wood, plaster, drywall occurring during Tenant's occupancy. Tenant is not to keep on the property any explosives or inflammable fluids or materials. Tenant understands that Tenant shall be responsible to repair all damage to the Premises' walls, doors, windows and coverings, laminate floors, tile floors, carpeting, equipment, appliances, and plumbing (including stoppages) caused by Tenant or Tenants guest. Tenant is to report promptly any defects or malfunction of the property or equipment furnished, including, but not limited to, faucet drips, leaks, toilets, window blinds, counter tops etc.

After occupation of the property accepted by Tenant, in a fit and habitable condition (with the exception of itemized damages submitted to Landlord in writing, as specified above) Tenant covenants to: Keep and maintain all parts of the premises in a state of good order and condition and shall surrender the same at the expiration of the term hereof in the same good order and condition in which they were received, reasonable wear and tear excepted. Tenant shall provide for and be responsible for all of the following items indicated with an "x":

- [x] Remove leaves, sticks and other debris that accumulate at area drains.
- [x] Keep gutters and downspouts cleaned and clear of leaves, and other debris.
- [x] To unstop and keep clear all waste pipes.

Any repairs or replacements necessary due to the negligence by acts of omission or commission of the Tenants, family, guests, or employees, will be charged to the Tenant as additional rent and shall be paid by the Tenant, including loss or damage from plumbing fixtures if due to the negligence of the Tenant. Repairs or replacement of equipment furnished due to normal wear and tear shall be at the expense of the Landlord.

= Disclosure Statement
Tenant acknowledges reading the "Disclosures by Property Owners" statement, if attached.

= Locks
No changes to locks or additional security devices without Landlord's prior written consent. Duplicate keys must be provided to Landlord within 24 hours.

= Attic
Tenant shall not use the attic.

= Indemnification
Tenant agrees to defend and hold Landlord harmless from any claims or damages arising out of the acts of Tenant or Tenant's guests. Except to the extent of Landlord's negligence, Landlord shall not be liable for any damage or injury to Tenant or Tenant's property occurring on the Premises or in common areas thereof.

= Security, Other Loss or Damages and RENTER'S INSURANCE
*TENANT ACKNOWLEDGES THAT NEITHER LANDLORD NOR LANDLORD'S AGENT(S) MAKE ANY REPRESENTATIONS OR WARRANTIES REGARDING THE SECURITY OF THE PREMISES AND TENANT ASSUMES ANY AND ALL SUCH RISKS.*

Tenant recognizes that Landlord cannot control the misconduct of others and that security devices such as locks and intercom systems, if applicable, are only deterrents and do not prevent civil or criminal misconduct. Tenant also recognizes that actions by other tenants such as loaning keys to others, leaving doors open, and releasing intercom door locks without identifying a caller are actions over which Landlord and Landlord have no control. Tenants agree to accept financial responsibility for any loss or damage to personal property belonging to Tenants and their guests and invitees caused by theft, fire, flooding, mechanical failure (such as backed up pipes or water overflowing causing flooding), flooding from neighboring units, or any other cause. Landlord and Landlord assume no liability for any such loss.

*Tenant agrees to obtain a renters' insurance policy from a recognized insurance firm to cover Tenant's liability, personal property damage and damage to the Premises.*

= Entry by Landlord and Showing to Prospective Tenants
Landlord may enter the Premises under the following circumstances: in case of emergency; to make necessary or agreed upon repairs, alterations, or improvements; supply necessary or agreed upon services; show the Premises to prospective or actual purchasers, mortgagees, tenants, workers, agents, or contractors; in the event that Tenant abandons or surrenders the Premises; or pursuant to Court order.

Landlord will provide Tenant with at least 24 hour notice of Landlord’s or Landlord's intent to enter except in case of an emergency or in the event that Tenant has abandoned or surrendered the Premises.

Further, Landlord will enter only during weekends and normal business hours unless an emergency exists, Tenant has surrendered or abandoned the Premises, or Tenant consents to the entry.

Landlord may post a "for rent" sign along with a lockbox containing keys for access, to show prospective tenants the premises, Tenant will permit Landlord to enter the property with reasonable notice, and at reasonable hours, during the last thirty days of the term of this Lease. Landlord may post a "for sale" sign along with a lockbox containing keys for access, to show prospective purchasers the premises, Tenant will permit Landlord to enter the property with reasonable notice to show prospective purchasers the premises.

During the last thirty days of the term of this Lease, Tenant agrees to help show the unit and have the unit in a "marketable", presentable, condition prior to agreed-upon scheduled showings to prospective tenants. This includes clean bathrooms, bedrooms, carpets, countertops, sinks, stoves, no dirty laundry or papers/magazines exposed, garbage removed, boxes collapsed and stowed, etc. The unit should be "picked up" and straightened so as to appear attractive to prospective tenants, and be almost in "move out" condition.

= Damages to Premises
If the Premises are so damaged by fire or from any other cause as to render them untenantable, then either party shall have the right on 15 days' written notice to the other party to terminate this contract as of the date of which such damage occurs, except that should such damage or destruction occur as the result of the conduct or negligence of Tenant or Tenant's guests, then only Landlord shall have the right to terminate. Should the right to terminate be exercised, then rent for the current month shall be prorated as of the date the damage occurred and any prepaid rent shall be refunded to Tenant. If this contract is not terminated, then Landlord shall promptly repair the Premises and there shall be a proportionate reduction of rent until the Premises are repaired and available for occupancy. The proportionate rent reduction shall be based on the extent to which the making of repairs interferes with Tenant's reasonable use of the Premises.

Landlord shall not be liable for nor shall there be a reduction in rent for any inconvenience, damage or loss to Tenant resulting from a mechanical or electrical failure in the Premises, including but not limited to failures in appliances, plumbing or heating/air conditioning units. Landlord agrees to make all necessary repairs of the same within a reasonable period of time.

= Force Majeure
If a party fails to perform all or part of its obligations under this Agreement due to an event of Force Majeure (meaning an event beyond the reasonable control of the affected party that is unforeseeable, or unavoidable and beyond remedy if foreseen, and which happens after the execution of this Agreement and renders the full or partial performance of this Agreement impossible or impracticable). Events of Force Majeure include but are not limited to floods, fires, draughts, typhoons, earthquakes, and other acts of God, traffic accidents, strikes, insurrections, turmoil and war (whether declared or not) and any action or inaction of any governmental authority). The performance of such obligations shall be suspended during the period during which such performance is affected by the event of Force Majeure.

= Fixed Term Tenancy
This contract is for a fixed term and *DOES NOT* convert to a month-to-month tenancy.

= Termination of Tenancy
On termination, Tenant shall: (1) completely vacate the Premises and any parking/storage area used by Tenant; (2) deliver all keys, furnishings, if any, and the Premises to Landlord in the same condition as received excepting normal wear and tear; and (3) give written notice of Tenant's forwarding address. Tenant shall be responsible for any damages that may result from Tenant's failure to timely vacate the Premises.

= Notice of Waiver to Quit Lease Provision
Provided always, that if the Tenant shall fail to pay said rent, in advance, as aforesaid, although there should have been no legal or formal demand made, or break or violate any of the within covenants, conditions or agreements, then, in any of said events, this agreement and all things herein contained shall, at the option of the Landlord, cease and determine, and shall operate as a Notice to Quit, the Twentyone (21) days' written notice to quit being hereby expressly waived, and the Landlord may proceed to recover possession of said premises under and by virtue of the provisions of the Code of Laws for the State of Washington, or by such legal process as may be, at the time, in operation and in force, in like cases relating to proceedings between Landlords and Tenants.

= Notices
Except as otherwise expressly provided by law, any and all notices or other communications required or permitted by this Lease or by law to be served on or given to either party to this Lease by the other party shall be in writing and shall be deemed to be served when personally delivered to the party to whom the notice is directed or, in lieu of personal service, when deposited in the United States mail, first-class postage prepaid, addressed to Tenant at the address of the Premises as set forth in the first paragraph of this Lease as well as affixed to the dwelling, or to Landlord at the address provided in the paragraph above.

= Time of Essence
Time is of the essence in this Lease.

= Waiver
If the Landlord waives any breach by Tenant of any provisions of this Lease, such waiver shall not constitute a continuing waiver or a waiver of any subsequent breach by Tenant of that same provision, or of any other provision, of the Lease. Landlord's acceptance of rent following a breach by Tenant of any provision of this Lease will not be deemed to be a waiver of Landlord's right to enforce any provision of this Lease.

= Nondiscrimination
Landlord shall not discriminate in the selection or treatment of Tenant on the basis of age, sex, race, color, religion, ancestry, national origin, martial or familial status, blindness, or physical or mental handicaps.

= Rent payment methods
All payment of rent shall be directed as follows:

*Payment Methods:*
- Zelle to #landlord: #landlord_phone
- Wire or Direct Deposit to #bank_info

All delivery of notices, repair requests, demands, complaints, and other contact from Tenant to Landlord shall be directed as follows, and may only be modified in writing by Landlord:
email: #landlord_email

= Binding Effect
This Lease is binding on heirs, executors, and successors of both parties.

= Acknowledgment of Receipt of Information
Lead paint notices required by federal law.

= Severability
If any provision is found invalid, the remainder of the Lease remains in effect.

= Entire Contract
The foregoing constitutes the entire contract between the parties and may be modified only by a writing signed by both parties. LANDLORD'S AGENT(S), IF ANY, IS NOT AUTHORIZED TO MODIFY THIS CONTRACT ORALLY OR IN WRITING.

A REAL ESTATE BROKER IS NOT QUALIFIED TO ADVISE YOU REGARDING YOUR RIGHTS AND OBLIGATIONS UNDER THIS CONTRACT. No representation or recommendation is made as to the legal validity of any provision or the adequacy of any provision of this contract. If you desire legal advice, consult your attorney.

#pagebreak()

#block(width: 100%, stroke: 0.5pt, inset: 1em, radius: 2pt)[
  *NOTICE*: A REAL ESTATE BROKER IS NOT QUALIFIED TO ADVISE YOU REGARDING YOUR RIGHTS AND OBLIGATIONS. IF YOU DESIRE LEGAL ADVICE, CONSULT AN ATTORNEY.
]

#v(1em)

*TENANT HEREBY ACKNOWLEDGES READING AND RECEIVING A COPY HEREOF.*

Executed on this #box(line(length: 4cm)) day of #box(line(length: 4cm)), 2026, in #execution_city. (Lease not signed in presence of Landlord or Landlord's agent must be notarized)

#v(2em)

#grid(
  columns: (1fr, 1fr),
  gutter: 2em,
  [
    *TENANT(S), JOINTLY AND SEVERALLY:*
    #v(1em)
    #for tenant in tenants [
      #line(length: 80%, stroke: 0.5pt)
      #text(size: 9pt)[#tenant, Tenant]
      #v(2em)
    ]
  ],
  [
    *LANDLORD OR LANDLORD'S AGENT:*
    #v(1em)
    #line(length: 80%, stroke: 0.5pt)
    #text(size: 9pt)[#landlord]
    #v(2em)
  ],
)

#pagebreak()

#heading(level: 1, numbering: none)[Digital Signature Certificate of Integrity]

#v(1em)

#block(
  width: 100%,
  stroke: 0.8pt + gray,
  inset: 2em,
  radius: 4pt,
  fill: gray.lighten(95%),
)[
  #grid(
    columns: (1fr, 80pt),
    gutter: 2em,
    [
      #set text(size: 10pt)
      #grid(
        columns: (auto, 1fr),
        gutter: 1em,
        [*Document Status:*], [PAdES-Compliant Encrypted],
        [*Signer Identity:*], [#landlord],
        [*Protocol:*], [X.509 Digital Certificate (NSS)],
      )

      #v(1em)
      #line(length: 100%, stroke: 0.5pt + gray)
      #v(1em)

      #text(weight: "bold", size: 11pt)[Notice to Recipients] \
      #v(0.5em)
      This document has been digitally signed using a self-signed X.509 certificate.

      - *Trust Status*: Adobe Acrobat Reader may display a "Validity Unknown" warning. This is expected for self-signed certificates and does not indicate a security breach.
      - *Seal Integrity*: The digital signature ensures the document has not been altered since the moment of signing.
    ],
    [
      #align(center + horizon)[
        #image("digital_seal.png", width: 250%)
      ]
    ],
  )
]

#v(2em)

#heading(level: 2, numbering: none)[Verification \& Trust Protocol]

#v(0.5em)
#text(size: 9pt)[
  To validate this signature, you may import the public certificate into Adobe Acrobat Reader certificate store.
]

#v(1em)

#text(weight: "bold", size: 10pt)[Certificate Fingerprints]
#v(0.5em)
#block(
  width: 100%,
  fill: rgb("#fcfcfc"),
  inset: 1.25em,
  radius: 4pt,
  stroke: 0.5pt + silver,
)[
  #set text(font: "Courier New", size: 8.5pt)
  #grid(
    columns: (auto, 1fr),
    gutter: 1.25em,
    align: horizon,
    [*SHA-256*], [DE 79 96 34 A6 47 71 9A 14 E0 8F 88 3A 1C 94 8D 32 F2 4F A9 CA ED E9 06 85 63 0F 36 59 B2 02 04],

    [*SHA-1*], [C7 DA A4 A3 94 D1 4F 80 64 4E 4A 62 74 BA 14 95 F6 71 73 A3],
  )
]

#v(1em)
#text(size: 9pt, style: "italic")[
  *Instructions*:
  Import the certificate file into Adobe Acrobat Reader certificate store
  by following these #text(fill: blue.darken(20%))[#link("https://helpx.adobe.com/acrobat/desktop/protect-documents/encrypt-with-certificates/import-via-digital-sign.html")[instructions]].
]


